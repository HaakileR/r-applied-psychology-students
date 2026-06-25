# 04 Scale Scoring and Reliability
# R for Applied Psychology Students

library(tidyverse)
library(psych)

data <- read_csv("data/raw/student_psychology_synthetic_raw.csv")

# Reverse scoring function for 1-5 Likert items
reverse_1_to_5 <- function(x) {
  6 - x
}

# Score perceived stress scale
data_scored <- data %>%
  mutate(
    pss_2_control = reverse_1_to_5(pss_2_control_reverse),
    pss_4_confident = reverse_1_to_5(pss_4_confident_reverse),
    perceived_stress_score = rowMeans(
      select(., pss_1_overwhelmed, pss_2_control, pss_3_nervous, pss_4_confident),
      na.rm = TRUE
    ),
    digital_stress_score = rowMeans(
      select(., ds_1_notifications, ds_2_pressure_reply, ds_3_information_overload,
             ds_4_multitasking, ds_5_sleep_disruption, ds_6_online_comparison),
      na.rm = TRUE
    ),
    academic_motivation_score = rowMeans(
      select(., ams_1_enjoy_learning, ams_2_effort, ams_3_career_relevance,
             ams_4_persistence, ams_5_interest),
      na.rm = TRUE
    ),
    wellbeing_score = rowMeans(
      select(., who_1_cheerful, who_2_calm, who_3_active, who_4_rested,
             who_5_interested),
      na.rm = TRUE
    ),
    exam_anxiety_score = rowMeans(
      select(., ea_1_worry, ea_2_tension, ea_3_avoidance, ea_4_concentration_difficulty),
      na.rm = TRUE
    )
  )

# Reliability: perceived stress
stress_items <- data_scored %>%
  select(pss_1_overwhelmed, pss_2_control, pss_3_nervous, pss_4_confident)

psych::alpha(stress_items)

# Reliability: digital stress
digital_items <- data_scored %>%
  select(ds_1_notifications, ds_2_pressure_reply, ds_3_information_overload,
         ds_4_multitasking, ds_5_sleep_disruption, ds_6_online_comparison)

psych::alpha(digital_items)

# Reliability: academic motivation
motivation_items <- data_scored %>%
  select(ams_1_enjoy_learning, ams_2_effort, ams_3_career_relevance,
         ams_4_persistence, ams_5_interest)

psych::alpha(motivation_items)

# Reliability: well-being
wellbeing_items <- data_scored %>%
  select(who_1_cheerful, who_2_calm, who_3_active, who_4_rested, who_5_interested)

psych::alpha(wellbeing_items)

# Reliability: exam anxiety
exam_items <- data_scored %>%
  select(ea_1_worry, ea_2_tension, ea_3_avoidance, ea_4_concentration_difficulty)

psych::alpha(exam_items)

# Save processed data
dir.create("data/processed", showWarnings = FALSE, recursive = TRUE)

data_scored %>%
  select(-pss_2_control, -pss_4_confident) %>%
  write_csv("data/processed/student_psychology_synthetic_scored.csv")
