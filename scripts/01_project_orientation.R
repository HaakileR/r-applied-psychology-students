# 01 Project Orientation
# R for Applied Psychology Students

# This script introduces the structure of the repository.

# List files in the project folder
list.files()

# List files in the data folder
list.files("data", recursive = TRUE)

# List R scripts
list.files("scripts")

# Read the processed synthetic dataset
data <- readr::read_csv("data/processed/student_psychology_synthetic_scored.csv")

# View the first rows
head(data)

# Check number of rows and columns
dim(data)

# Check variable names
names(data)
