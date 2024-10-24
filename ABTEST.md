# A/B Test Descriptions

## A/B Test 1: Round-Up Savings - Automatic vs. Customizable Round-Up Amount

**User Story Number:** US5 (Savings Feature)

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
