# 11 Reporting Results in APA-style Language
# R for Applied Psychology Students

library(tidyverse)
library(broom)

data <- read_csv("data/processed/student_psychology_synthetic_scored.csv")

# Example: correlation
cor_result <- cor.test(data$perceived_stress_score, data$wellbeing_score)
cor_result

# Extract values
r_value <- round(cor_result$estimate, 2)
p_value <- cor_result$p.value

# Simple reporting helper
format_p <- function(p) {
  ifelse(p < .001, "p < .001", paste0("p = ", round(p, 3)))
}

format_p(p_value)

# Example sentence:
paste0(
  "Perceived stress was correlated with well-being, r = ",
  r_value, ", ", format_p(p_value), "."
)

# Example: regression
model <- lm(wellbeing_score ~ perceived_stress_score + digital_stress_score +
              academic_motivation_score + sleep_hours, data = data)

tidy_model <- broom::tidy(model, conf.int = TRUE)
glance_model <- broom::glance(model)

tidy_model
glance_model

# Teaching note:
# These examples are based on synthetic data. They should be used to learn
# reporting logic, not to make substantive claims about real students.
