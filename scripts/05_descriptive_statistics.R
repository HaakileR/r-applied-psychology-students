# 05 Descriptive Statistics
# R for Applied Psychology Students

library(tidyverse)
library(psych)

data <- read_csv("data/processed/student_psychology_synthetic_scored.csv")

# Frequency tables
table(data$gender)
table(data$study_year)
table(data$program)
table(data$employment_status)

# Descriptive statistics for key scale scores
key_scales <- data %>%
  select(perceived_stress_score, digital_stress_score,
         academic_motivation_score, wellbeing_score,
         exam_anxiety_score, academic_satisfaction,
         research_methods_confidence, sleep_hours,
         daily_screen_time_hours, social_media_hours)

psych::describe(key_scales)

# Descriptives by gender
data %>%
  group_by(gender) %>%
  summarise(
    n = n(),
    mean_stress = mean(perceived_stress_score, na.rm = TRUE),
    sd_stress = sd(perceived_stress_score, na.rm = TRUE),
    mean_wellbeing = mean(wellbeing_score, na.rm = TRUE),
    sd_wellbeing = sd(wellbeing_score, na.rm = TRUE)
  )

# Descriptives by study year
data %>%
  group_by(study_year) %>%
  summarise(
    n = n(),
    mean_methods_confidence = mean(research_methods_confidence, na.rm = TRUE),
    mean_motivation = mean(academic_motivation_score, na.rm = TRUE),
    mean_exam_anxiety = mean(exam_anxiety_score, na.rm = TRUE)
  )
