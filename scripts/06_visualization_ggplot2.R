# 06 Visualization with ggplot2
# R for Applied Psychology Students

library(tidyverse)

data <- read_csv("data/processed/student_psychology_synthetic_scored.csv")

# Histogram: perceived stress
ggplot(data, aes(x = perceived_stress_score)) +
  geom_histogram(bins = 15) +
  labs(
    title = "Distribution of Perceived Stress Scores",
    x = "Perceived stress score",
    y = "Number of students"
  )

# Boxplot: well-being by gender
ggplot(data, aes(x = gender, y = wellbeing_score)) +
  geom_boxplot() +
  labs(
    title = "Well-being by Gender",
    x = "Gender",
    y = "Well-being score"
  )

# Scatterplot: digital stress and well-being
ggplot(data, aes(x = digital_stress_score, y = wellbeing_score)) +
  geom_point(alpha = 0.70) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Digital Stress and Well-being",
    x = "Digital stress score",
    y = "Well-being score"
  )

# Bar chart: study year
ggplot(data, aes(x = as.factor(study_year))) +
  geom_bar() +
  labs(
    title = "Students by Study Year",
    x = "Study year",
    y = "Count"
  )

# Mean research methods confidence by study year
data %>%
  group_by(study_year) %>%
  summarise(mean_confidence = mean(research_methods_confidence, na.rm = TRUE)) %>%
  ggplot(aes(x = as.factor(study_year), y = mean_confidence)) +
  geom_col() +
  labs(
    title = "Mean Research Methods Confidence by Study Year",
    x = "Study year",
    y = "Mean confidence"
  )
