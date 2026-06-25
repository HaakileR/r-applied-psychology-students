# 07 Group Comparisons
# R for Applied Psychology Students

library(tidyverse)
library(broom)

data <- read_csv("data/processed/student_psychology_synthetic_scored.csv")

# Example 1: t-test
# Do Female and Male students differ in perceived stress?
gender_data <- data %>%
  filter(gender %in% c("Female", "Male"))

t_test_result <- t.test(perceived_stress_score ~ gender, data = gender_data)
t_test_result

# Tidy result
broom::tidy(t_test_result)

# Group means
gender_data %>%
  group_by(gender) %>%
  summarise(
    n = n(),
    mean_stress = mean(perceived_stress_score, na.rm = TRUE),
    sd_stress = sd(perceived_stress_score, na.rm = TRUE)
  )

# Example 2: ANOVA
# Does research methods confidence differ across study years?
anova_model <- aov(research_methods_confidence ~ as.factor(study_year), data = data)
summary(anova_model)

# Post-hoc comparison
TukeyHSD(anova_model)

# Group means
data %>%
  group_by(study_year) %>%
  summarise(
    n = n(),
    mean_confidence = mean(research_methods_confidence, na.rm = TRUE),
    sd_confidence = sd(research_methods_confidence, na.rm = TRUE)
  )
