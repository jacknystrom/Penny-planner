# A/B Test Descriptions

## A/B Test 1: Round-Up Savings - Automatic vs. Customizable Round-Up Amount (Anthony)

**User Story Number:** US7 (AB Testing)

**Metrics:**
- Happiness: User satisfaction with the round-up feature.
- Engagement: The frequency of feature usage.
- Adoption: The number of users who enable the round-up feature.
- Retention: How often users return to the feature over time.
- Task Success: The amount of money users save using the feature.

**Hypothesis:**
Test A (Automatic Round-Up) will lead to higher consistency of use, while Test B (Customizable Round-Up) will result in higher total savings amounts. Users in Test A are expected to engage more regularly, while users in Test B are expected to save more per transaction but may use the feature less consistently.

**Problem:**
We are trying to find the most effective method for encouraging users to save money consistently. The impact of this problem is high as it can improve both feature adoption and user retention.

**Experiment:**
- **Audience:** 50% of users will experience Test A (automatic round-up to the nearest dollar), and 50% will experience Test B (customizable round-up with options of $1, $5, or $10).
- **Tracking:** 
  - Track feature enablement.
  - Track frequency of round-up usage.
  - Track total savings per user.
  - Monitor user feedback through surveys post-interaction.
- **HEART Metrics:** Utilize Firebase Analytics to track happiness, engagement, adoption, retention, and task success.

**Variations:**
- **Variation A:** Users experience automatic round-up to the nearest dollar.
- **Variation B:** Users can choose their round-up amount ($1, $5, or $10).


## A/B Test 2: Light vs Dark mode (Genevieve)

**User Story Number:** US7 (AB Testing)

**Metrics:**
- Happiness: User satisfaction with dark screen vs light screen.
- Engagement: The frequency of users with the dark screen vs light screen.
- Adoption: The number of new users for the dark screen vs light screen.
- Retention: How often users return to app with the dark screen vs light screen.
- Task Success: How offten people complete challenges with the dark screen vs light screen.

**Hypothesis:**
Users will have higher engagement, satisfaction, and retention with the app when provided with a dark screen option compared to the standard light screen, as a darker interface may reduce eye strain and appeal to a larger portion of users.

**Problem:**
Users may experience eye strain, especially during extended app usage, which can lead to lower engagement, satisfaction, and retention rates. Additionally, users increasingly prefer dark mode options across apps for usability and aesthetic reasons, potentially affecting user adoption if not provided.

**Experiment:**
- **Audience:** 50% of users will experience Test A (Dark mode), and 50% will experience Test B (Light mode).
- **Tracking:**
- **HEART Metrics:** Utilize Firebase Analytics to track happiness, engagement, adoption, retention, and task success.

**Variations:**
- **Variation A:** Users are given a dark screen mode
- **Variation B:** Users are given a light screen mode


## A/B Test 3: Savings Reminder Timing (Snaha)

**User Story Number:** US7 (AB Testing)

**Metrics:**
- Engagement: Frequency with which users engage with the reminder notification (e.g., open rate, click-through rate).
- Conversion: Percentage of users who make a deposit or add to their savings after receiving a reminder.
- Retention: How consistently users respond to reminders over time (daily, weekly).
- Opt-Out Rate: Number of users who disable reminders over time, possibly due to timing preference.

**Hypothesis:**
Users are more likely to engage with the app and complete a savings deposit when reminded during optimal times. Morning reminders may prompt saving as part of the start-of-day routine, while evening reminders may encourage saving leftover funds from daily expenses.

**Problem:**
Identifying the optimal time to send savings reminders can maximize user engagement and deposit rates while avoiding notification fatigue. Without testing, reminders could disrupt users’ routines, leading to higher opt-out rates and decreased engagement.

**Experiment:**
- **Audience:** Split the user base equally, with 50% of users in Group A (morning reminders) and 50% in Group B (evening reminders).
- **Tracking:**
- **HEART Metrics:** Track engagement, conversion, retention, and opt-out rate metrics using Firebase Analytics or another analytics tool to assess the impact of reminder timing on user behavior.

**Variations:**
- **Variation A:** Users receive savings reminders in the morning (e.g., 8:00 AM).
- **Variation B:** Users receive savings reminders in the evening (e.g., 6:00 PM).

##A/B Test 4: Flat Design vs. Detailed Design (UI Elements) (Tyler Palmer)

User Story Number: US12 (AB Testing)

**Metrics:**

- **Engagement: Rate of interaction with the UI elements, such as button clicks, form submissions, or navigation.
- **Session Duration: Average time users spend within the app or specific screens after interacting with the design.
- **Conversion Rate: Percentage of users who complete a targeted action, such as making a purchase or signing up.
- **Bounce Rate: Percentage of users who leave the app or screen without interacting.

Hypothesis: A more detailed design, featuring drop shadows and subtle gradients, may increase user engagement and interaction by creating a more visually appealing and intuitive interface. However, a flat design may streamline the user experience and reduce visual clutter, potentially resulting in faster navigation and higher completion rates for target actions.

Problem: Deciding between a flat design and a detailed design with added depth is challenging without data on user preferences. Overly simplistic designs could impact the perceived quality of the app, while intricate designs could slow performance or distract users, leading to decreased conversion rates.

**Experiment:**

- **Audience: Randomly split users into two equal groups, with 50% assigned to Group A (Flat Design) and 50% to Group B (Detailed Design).
- **Tracking:
- **HEART Metrics: Use Google Analytics, Firebase, or Mixpanel to monitor engagement, session duration, conversion rate, and bounce rate. These metrics will help assess which design approach best supports usability and user interaction.

**Variations:**

- **Variation A: Flat design UI elements with minimal detail, no drop shadows, and a focus on simplicity and functionality. Runs with users before 6:00 PM
- **Variation B: Detailed design UI elements with drop shadows, gradients, and additional visual depth for a more polished, interactive appearance. Runs with users after 6:00 PM
