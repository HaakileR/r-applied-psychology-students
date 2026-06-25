# 02 Import and Inspect Data
# R for Applied Psychology Students

library(tidyverse)

# Import raw synthetic data
raw_data <- read_csv("data/raw/student_psychology_synthetic_raw.csv")

# Inspect the data
glimpse(raw_data)
head(raw_data)
summary(raw_data)

# Check dimensions
nrow(raw_data)
ncol(raw_data)

# Check variable names
names(raw_data)

# Check the first 10 cases
raw_data %>%
  slice(1:10)

# Frequency table for gender
table(raw_data$gender)

# Frequency table for study year
table(raw_data$study_year)

# Save a copy in the environment with a shorter name
data <- raw_data
