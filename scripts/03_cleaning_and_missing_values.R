# 03 Data Cleaning and Missing Values
# R for Applied Psychology Students

library(tidyverse)

data <- read_csv("data/raw/student_psychology_synthetic_raw.csv")

# Convert selected variables to factors
data_clean <- data %>%
  mutate(
    gender = as.factor(gender),
    study_year = as.factor(study_year),
    program = as.factor(program),
    employment_status = as.factor(employment_status)
  )

# Check missing values by variable
missing_summary <- data_clean %>%
  summarise(across(everything(), ~ sum(is.na(.)))) %>%
  pivot_longer(
    cols = everything(),
    names_to = "variable",
    values_to = "missing_count"
  ) %>%
  arrange(desc(missing_count))

missing_summary

# Percentage of missing values
missing_summary <- missing_summary %>%
  mutate(missing_percent = round(missing_count / nrow(data_clean) * 100, 2))

missing_summary

# Example: filter complete cases for selected variables
complete_stress_data <- data_clean %>%
  filter(!is.na(pss_1_overwhelmed),
         !is.na(pss_2_control_reverse),
         !is.na(pss_3_nervous),
         !is.na(pss_4_confident_reverse))

nrow(complete_stress_data)

# Example: create a stress category using existing scored data later
# Categories are useful for teaching but should be used carefully in real research.
