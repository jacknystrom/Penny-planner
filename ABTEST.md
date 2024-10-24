#### A/B Test Name: 
**Round-Up Savings: Automatic vs. Customizable Round-Up Amount**

#### User Story Number:
This A/B test relates to **US5** (Savings Feature).

#### Metrics:
- **Happiness:** User satisfaction with the round-up feature.
- **Engagement:** The frequency of feature usage.
- **Adoption:** The number of users who enable the round-up feature.
- **Retention:** How often users return to the feature over time.
- **Task Success:** The amount of money users save using the feature.

#### Hypothesis:
**Test A** (Automatic Round-Up) will result in **higher consistency of use**, while **Test B** (Customizable Round-Up) will lead to **higher total savings amounts**. We hypothesize that users in Test A will engage more regularly with the feature due to its ease of use, whereas users in Test B will save more per transaction due to customizable options, but may engage less consistently.

#### Problem:
We are trying to determine the best way to encourage users to save small amounts of money consistently. The problem is whether users prefer an automatic system that saves for them with no input or a system that gives them control over how much they want to save. The impact of this problem is high since a more effective round-up feature can increase savings adoption and user retention.

#### Experiment:
- **Audience:** 50% of users will experience Test A (automatic round-up to the nearest dollar) and 50% will experience Test B (customizable round-up with options of $1, $5, or $10).
- **Firebase Analytics Tracking:**
  - Track feature enablement (how many users turn on the round-up feature).
  - Track frequency of use (how many transactions trigger a round-up).
  - Track total savings amounts per user.
  - Track user satisfaction through surveys post-interaction with the round-up feature.
- **HEART Metrics:** Ensure tracking of happiness, engagement, adoption, retention, and task success using Firebase Analytics.

#### Variations:
- **Variation A:** Users experience automatic round-up to the nearest dollar on every purchase.
- **Variation B:** Users can customize their round-up amount to $1, $5, or $10.
