# 00 Setup
# R for Applied Psychology Students
# Author: Hakile Resulbegović

# Purpose:
# This script checks and loads the packages used in the teaching materials.

# Recommended packages
required_packages <- c(
  "tidyverse",
  "psych",
  "broom",
  "knitr",
  "rmarkdown"
)

# Install missing packages
installed <- rownames(installed.packages())
missing_packages <- required_packages[!required_packages %in% installed]

if (length(missing_packages) > 0) {
  install.packages(missing_packages)
}

# Load packages
library(tidyverse)
library(psych)
library(broom)
library(knitr)

# Check working directory
getwd()

# Recommended:
# Open the file r-applied-psychology-students.Rproj before running scripts.
