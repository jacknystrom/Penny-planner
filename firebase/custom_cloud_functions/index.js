const admin = require("firebase-admin/app");
admin.initializeApp();

const sendDueDateNotification = require("./send_due_date_notification.js");
exports.sendDueDateNotification =
  sendDueDateNotification.sendDueDateNotification;
