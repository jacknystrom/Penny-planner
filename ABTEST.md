# A/B Test Descriptions

## A/B Test: Automatic vs. Customizable Round-Up Savings

**User Story Number:** US7 (A/B Testing)

**Metrics:**
- **Happiness:** User satisfaction with each round-up method.
- **Engagement:** Frequency of round-up feature usage.
- **Adoption:** Number of users who enable the round-up feature.
- **Retention:** Frequency of users returning to use the round-up feature.
- **Task Success:** Total amount saved by users with the feature.

**Hypothesis:**
Users with **Automatic Round-Up** (Variation A) will use the feature more consistently, leading to higher engagement. In contrast, users with **Customizable Round-Up** (Variation B) will likely save higher amounts per transaction but may use the feature less frequently.

**Problem:**
Identify the most effective round-up method to encourage consistent user savings, aiming to boost both feature adoption and long-term retention.

**Experiment Setup:**
- **Audience:** Randomly assign 50% of users to Variation A (automatic round-up to the nearest dollar) and 50% to Variation B (customizable round-up options of $1, $5, or $10).
- **Tracking:**
  - Track feature enablement rate.
  - Track usage frequency.
  - Track total savings per user.
  - Collect user feedback through post-interaction surveys.
- **HEART Metrics:** Use Firebase Analytics to measure happiness, engagement, adoption, retention, and task success.

**Variations:**
- **Variation A (Automatic Round-Up):** Users have transactions automatically rounded up to the nearest dollar.
- **Variation B (Customizable Round-Up):** Users select their preferred round-up amount from options of $1, $5, or $10.


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

## A/B Test 4:Flat Design vs. Detailed Design (UI Elements) (Tyler Palmer)

User Story Number: US7 (AB Testing)

**Metrics:**
- Engagement: Rate of interaction with the UI elements, such as button clicks, form submissions, or navigation.
- Session Duration: Average time users spend within the app or specific screens after interacting with the design.
- Conversion Rate: Percentage of users who complete a targeted action, such as making a purchase or signing up.
- Bounce Rate: Percentage of users who leave the app or screen without interacting.

**Hypothesis:**
A more detailed design, featuring drop shadows and subtle gradients, may increase user engagement and interaction by creating a more visually appealing and intuitive interface. However, a flat design may streamline the user experience and reduce visual clutter, potentially resulting in faster navigation and higher completion rates for target actions.

**Problem:**
Deciding between a flat design and a detailed design with added depth is challenging without data on user preferences. Overly simplistic designs could impact the perceived quality of the app, while intricate designs could slow performance or distract users, leading to decreased conversion rates.

**Experiment:**
- Audience: Randomly split users into two equal groups, with 50% assigned to Group A (Flat Design) and 50% to Group B (Detailed Design).
- Tracking:
- HEART Metrics: Use Google Analytics, Firebase, or Mixpanel to monitor engagement, session duration, conversion rate, and bounce rate. These metrics will help assess which design approach best supports usability and user interaction.

**Variations:**
- **Variation A:** Flat design UI elements with minimal detail, no drop shadows, and a focus on simplicity and functionality. Runs with users before 6:00 PM
- **Variation B:** Detailed design UI elements with drop shadows, gradients, and additional visual depth for a more polished, interactive appearance. Runs with users after 6:00 PM

## A/B Test 5: Linear Progress bar vs Circular Progress bar (Jack)
**User Story Number:** US7 (AB Testing)
  
**Metrics**:
-Happiness: User Satisfaction with Linear vs Circular progress bar
-Engagement: Frequency of challenge creation and task updating between both bar types
-Adoption: The Number of new users of group A(linear) and group B(Circular)
-Retention: How often signed up users return to Group A vs Group be in a 7 day time frame
-Task Success: How often people complete challenges with the Linear progress bar vs the circular progress bar

**Hypothesis:** The circular progress bar will Display the users progress in a more appealing and immediately understandable way, creating higher task completion,   -retention, user satisfaction, and engagement.

**Experiment**:
Audience: 50% of users will experience Test A (Linear progress bar), and 50% will experience Test B (Circular progress bar).

**Tracking:**

**HEART Metrics:** Utilize Firebase Analytics to track happiness, engagement, adoption, retention, and task success.

***Variations:**
-Variation A: Users are given Challenges with progress displayed as a linear progress bar
-Variation B: Users are Challenges with progress displayed as a Circular progress

