# 09 Regression Analysis
# R for Applied Psychology Students

library(tidyverse)
library(broom)

data <- read_csv("data/processed/student_psychology_synthetic_scored.csv")

# Simple regression:
# Does perceived stress predict well-being?
model_1 <- lm(wellbeing_score ~ perceived_stress_score, data = data)
summary(model_1)

# Multiple regression:
# Do stress, digital stress, motivation, and sleep predict well-being?
model_2 <- lm(
  wellbeing_score ~ perceived_stress_score + digital_stress_score +
    academic_motivation_score + sleep_hours,
  data = data
)

summary(model_2)

# Regression table
broom::tidy(model_2, conf.int = TRUE)

# Model fit
broom::glance(model_2)

# Diagnostics
par(mfrow = c(2, 2))
plot(model_2)
par(mfrow = c(1, 1))

# Interpretation guide:
# - Estimate: expected change in the outcome for a one-unit increase in the predictor.
# - p-value: evidence against the null hypothesis.
# - R-squared: proportion of variance explained by the model.
# - Confidence interval: range of plausible values for the estimate.
