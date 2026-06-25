# Solutions to Exercises
# R for Applied Psychology Students

library(tidyverse)
library(psych)
library(broom)

# Exercise 01 -------------------------------------------------------------

my_age <- 22
my_score <- 4.5
my_name <- "Student"

my_age
my_score
my_name

stress_scores <- c(2, 3, 4, 4, 5)
mean(stress_scores)
sd(stress_scores)
min(stress_scores)
max(stress_scores)

data <- read_csv("data/processed/student_psychology_synthetic_scored.csv")
nrow(data)
ncol(data)
names(data)

# Exercise 02 -------------------------------------------------------------

raw_data <- read_csv("data/raw/student_psychology_synthetic_raw.csv")

clean_data <- raw_data %>%
  mutate(
    gender = as.factor(gender),
    study_year = as.factor(study_year),
    program = as.factor(program),
    employment_status = as.factor(employment_status)
  )

missing_table <- clean_data %>%
  summarise(across(everything(), ~ sum(is.na(.)))) %>%
  pivot_longer(everything(), names_to = "variable", values_to = "missing_count")

missing_table

small_data <- clean_data %>%
  select(id, gender, age, study_year,
         starts_with("pss_"),
         starts_with("who_"))

head(small_data)

# Exercise 03 -------------------------------------------------------------

scored_data <- read_csv("data/processed/student_psychology_synthetic_scored.csv")

describe(scored_data %>%
           select(perceived_stress_score, digital_stress_score,
                  academic_motivation_score, wellbeing_score,
                  exam_anxiety_score))

scored_data %>%
  group_by(gender) %>%
  summarise(mean_wellbeing = mean(wellbeing_score, na.rm = TRUE))

ggplot(scored_data, aes(x = perceived_stress_score)) +
  geom_histogram(bins = 15)

ggplot(scored_data, aes(x = digital_stress_score, y = wellbeing_score)) +
  geom_point() +
  geom_smooth(method = "lm")

# Exercise 04 -------------------------------------------------------------

gender_data <- scored_data %>%
  filter(gender %in% c("Female", "Male"))

gender_data %>%
  group_by(gender) %>%
  summarise(
    mean_stress = mean(perceived_stress_score, na.rm = TRUE),
    sd_stress = sd(perceived_stress_score, na.rm = TRUE),
    n = n()
  )

t.test(perceived_stress_score ~ gender, data = gender_data)

anova_model <- aov(research_methods_confidence ~ as.factor(study_year), data = scored_data)
summary(anova_model)

# Exercise 05 -------------------------------------------------------------

simple_model <- lm(wellbeing_score ~ perceived_stress_score, data = scored_data)
summary(simple_model)

multiple_model <- lm(
  wellbeing_score ~ perceived_stress_score + digital_stress_score +
    academic_motivation_score + sleep_hours,
  data = scored_data
)

summary(multiple_model)
broom::tidy(multiple_model, conf.int = TRUE)
