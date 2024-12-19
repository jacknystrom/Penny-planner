const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp();

const db = admin.firestore();

exports.sendDueDateNotification = functions.pubsub
  .schedule("every 1 hours")
  .onRun(async (context) => {
    console.log("Cloud Function triggered.");

    const now = admin.firestore.Timestamp.now();
    const dueSoonTime = new Date();
    dueSoonTime.setHours(dueSoonTime.getHours() + 1);

    console.log(`Current time: ${now.toDate()}`);
    console.log(`Due soon time: ${dueSoonTime}`);

    try {
      // Query Firestore for tasks due soon
      const tasksSnapshot = await db
        .collection("Tasks")
        .where(
          "due_date",
          "<=",
          admin.firestore.Timestamp.fromDate(dueSoonTime),
        )
        .where("due_date", ">", now)
        .get();

      console.log(
        `Firestore query completed. Documents found: ${tasksSnapshot.size}`,
      );

      if (tasksSnapshot.empty) {
        console.log("No tasks due soon.");
        return null;
      }

      const notifications = [];
      tasksSnapshot.forEach((doc) => {
        const task = doc.data();
        const projectName = task.project_name || "Unnamed Project";
        const ownerRef = task.owner;
        const userId = ownerRef?.id || task.uid;

        console.log(`Processing task: ${projectName}, User ID: ${userId}`);

        if (!userId) {
          console.log(`Skipping task ${doc.id} due to missing user ID.`);
          return;
        }

        const message = {
          notification: {
            title: "Task Reminder",
            body: `Your task "${projectName}" is due soon!`,
            clickAction: "FLUTTER_NOTIFICATION_CLICK",
          },
          topic: userId,
        };

        notifications.push(admin.messaging().send(message));
      });

      console.log(`Sending ${notifications.length} notifications...`);

      // Send all notifications
      await Promise.all(notifications);
      console.log("All notifications sent successfully.");
      return null;
    } catch (error) {
      console.error("Error during function execution:", error);
      return null;
    }
  });
