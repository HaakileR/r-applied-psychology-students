# 08 Correlation Analysis
# R for Applied Psychology Students

library(tidyverse)

data <- read_csv("data/processed/student_psychology_synthetic_scored.csv")

# Select key numeric variables
cor_data <- data %>%
  select(perceived_stress_score, digital_stress_score,
         academic_motivation_score, wellbeing_score,
         exam_anxiety_score, sleep_hours,
         daily_screen_time_hours, social_media_hours,
         research_methods_confidence)

# Correlation matrix
cor_matrix <- cor(cor_data, use = "pairwise.complete.obs")
round(cor_matrix, 2)

# Correlation test: perceived stress and well-being
cor.test(data$perceived_stress_score, data$wellbeing_score)

# Correlation test: digital stress and exam anxiety
cor.test(data$digital_stress_score, data$exam_anxiety_score)

# Long-format correlation table for export
cor_table <- as.data.frame(as.table(cor_matrix)) %>%
  rename(variable_1 = Var1, variable_2 = Var2, correlation = Freq) %>%
  mutate(correlation = round(correlation, 3))

cor_table
