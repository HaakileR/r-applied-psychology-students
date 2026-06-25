# 10 Export Results
# R for Applied Psychology Students

library(tidyverse)
library(broom)

data <- read_csv("data/processed/student_psychology_synthetic_scored.csv")

# Create output folders
dir.create("outputs/tables", recursive = TRUE, showWarnings = FALSE)
dir.create("outputs/figures", recursive = TRUE, showWarnings = FALSE)

# Descriptive table
descriptive_table <- data %>%
  summarise(
    n = n(),
    mean_stress = mean(perceived_stress_score, na.rm = TRUE),
    sd_stress = sd(perceived_stress_score, na.rm = TRUE),
    mean_digital_stress = mean(digital_stress_score, na.rm = TRUE),
    sd_digital_stress = sd(digital_stress_score, na.rm = TRUE),
    mean_wellbeing = mean(wellbeing_score, na.rm = TRUE),
    sd_wellbeing = sd(wellbeing_score, na.rm = TRUE)
  )

write_csv(descriptive_table, "outputs/tables/descriptive_table.csv")

# Regression table
model <- lm(
  wellbeing_score ~ perceived_stress_score + digital_stress_score +
    academic_motivation_score + sleep_hours,
  data = data
)

regression_table <- broom::tidy(model, conf.int = TRUE)
write_csv(regression_table, "outputs/tables/regression_table.csv")

# Save a figure
fig <- ggplot(data, aes(x = perceived_stress_score, y = wellbeing_score)) +
  geom_point(alpha = 0.70) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Perceived Stress and Well-being",
    x = "Perceived stress score",
    y = "Well-being score"
  )

ggsave("outputs/figures/stress_wellbeing_scatterplot.png", fig, width = 7, height = 5)
