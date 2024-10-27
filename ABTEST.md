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


## A/B Test 2: Light vs Dark screen (Genevieve)

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
