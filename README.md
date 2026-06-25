# R for Applied Psychology Students: Open Materials for Data Analysis in Psychological Research

**Version:** 1.0.0  
**Author:** Hakile Resulbegoviq  
**Repository:** `r-applied-psychology-students`  
**License:** CC BY 4.0  
**Status:** Open educational and research training materials prepared for public release and Zenodo archiving.

## About the project

This repository contains open learning materials for students of applied psychology who are beginning to use **R** for data analysis in psychological research.

The materials are designed for teaching, workshops, guided exercises, and self-study. They combine:

- synthetic psychology-style data;
- annotated R scripts;
- data cleaning examples;
- scale scoring and reliability analysis;
- descriptive statistics;
- visualization with `ggplot2`;
- group comparisons;
- correlation and regression analysis;
- templates for reporting results;
- documentation prepared for citation and Zenodo DOI release.

The project supports reproducible, transparent, and open research practices in psychology and the social sciences.

## Intended audience

These materials are intended for:

- undergraduate students of applied psychology;
- master students in psychology and social sciences;
- early-career researchers learning R;
- teaching assistants and instructors preparing introductory data analysis classes;
- students moving from SPSS-based analysis toward reproducible R workflows.

## Learning outcomes

After working through the materials, students should be able to:

1. understand the basic structure of an R project;
2. import and inspect data;
3. identify missing values and variable types;
4. score simple psychological scales;
5. estimate internal consistency using Cronbach's alpha;
6. calculate descriptive statistics;
7. create clear visualizations;
8. conduct t-tests, ANOVA, correlations, and regression models;
9. export tables and figures;
10. report results in a transparent and reproducible way.

## Repository structure

```text
r-applied-psychology-students/
│
├── README.md
├── CITATION.cff
├── LICENSE
├── .zenodo.json
├── CHANGELOG.md
├── VERSION
├── r-applied-psychology-students.Rproj
│
├── data/
│   ├── data_dictionary.csv
│   ├── README.md
│   ├── raw/
│   │   └── student_psychology_synthetic_raw.csv
│   └── processed/
│       └── student_psychology_synthetic_scored.csv
│
├── scripts/
│   ├── 00_setup.R
│   ├── 01_project_orientation.R
│   ├── 02_import_and_inspect_data.R
│   ├── 03_cleaning_and_missing_values.R
│   ├── 04_scale_scoring_and_reliability.R
│   ├── 05_descriptive_statistics.R
│   ├── 06_visualization_ggplot2.R
│   ├── 07_group_comparisons.R
│   ├── 08_correlation_analysis.R
│   ├── 09_regression_analysis.R
│   ├── 10_export_results.R
│   └── 11_reporting_results_APA_style.R
│
├── materials/
│   ├── how_to_use_these_materials.md
│   ├── overview_MNE.md
│   ├── instructor_overview.md
│   ├── lesson_plan_7_weeks.md
│   ├── teaching_notes.md
│   └── zenodo_github_release_checklist.md
│
├── exercises/
│   ├── exercise_01_intro_to_R.md
│   ├── exercise_02_data_cleaning.md
│   ├── exercise_03_descriptives_visualization.md
│   ├── exercise_04_group_comparisons.md
│   └── exercise_05_regression.md
│
├── solutions/
│   └── solutions_to_exercises.R
│
├── reports/
│   └── example_analysis_report.Rmd
│
├── templates/
│   ├── cv_entry.md
│   ├── zenodo_description.md
│   └── results_reporting_template.md
│
├── outputs/
│   ├── tables/
│   └── figures/
│
└── references/
    └── recommended_resources.md
```

## Dataset

The dataset included in this repository is **fully synthetic**. It was created only for teaching and practice. It does not contain real participant data.

The synthetic dataset contains variables often used in applied psychology teaching examples:

- demographic variables;
- study-related variables;
- digital stress items;
- perceived stress items;
- academic motivation items;
- well-being items;
- exam anxiety items;
- scale scores prepared for analysis.

## Quick start

1. Download or clone this repository.
2. Open `r-applied-psychology-students.Rproj` in RStudio.
3. Start with `scripts/00_setup.R`.
4. Run the scripts in numerical order.
5. Use the exercises after completing the relevant scripts.

Recommended packages:

```r
install.packages(c("tidyverse", "psych", "broom", "knitr", "rmarkdown"))
```

## Suggested citation

> Resulbegoviq, H. (2026). *R for Applied Psychology Students: Open Materials for Data Analysis in Psychological Research* (Version 1.0.0). GitHub. https://github.com/HaakileR/r-applied-psychology-students

## License

This work is shared under the **Creative Commons Attribution 4.0 International License (CC BY 4.0)**.

You may share and adapt the materials, provided that appropriate credit is given.

## Academic positioning

This repository is designed as an open educational resource and reproducible teaching material. It can be used as evidence of:

- open science practice;
- knowledge transfer;
- teaching innovation;
- methodological training;
- reproducible research support in applied psychology.
