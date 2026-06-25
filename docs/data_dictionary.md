# Data Dictionary

The dataset is synthetic and intended only for teaching.

| variable                      | description                                                                  | values_or_range                                                      | scale_or_type       |
|:------------------------------|:-----------------------------------------------------------------------------|:---------------------------------------------------------------------|:--------------------|
| id                            | Unique synthetic participant identifier                                      | 1-300                                                                | integer             |
| gender                        | Self-reported gender category used for teaching examples                     | Female; Male; Prefer not to say                                      | categorical         |
| age                           | Age of synthetic participant                                                 | 18-35                                                                | numeric             |
| study_year                    | Year of study                                                                | 1-5                                                                  | categorical/numeric |
| program                       | Study programme category                                                     | Applied Psychology; Psychology; Social Sciences                      | categorical         |
| employment_status             | Student employment status                                                    | Not employed; Part-time; Full-time                                   | categorical         |
| average_grade                 | Synthetic average grade on a 6-10 scale                                      | 6-10                                                                 | numeric             |
| daily_screen_time_hours       | Estimated daily screen time in hours                                         | 1-12                                                                 | numeric             |
| social_media_hours            | Estimated daily social media use in hours                                    | 0.2-8                                                                | numeric             |
| sleep_hours                   | Average sleep duration in hours                                              | 3.5-10.5                                                             | numeric             |
| exercise_days_week            | Number of exercise days per week                                             | 0-7                                                                  | integer             |
| pss_1_overwhelmed             | Perceived stress item: feeling overwhelmed by responsibilities               | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| pss_2_control_reverse         | Reverse-worded perceived stress item: feeling in control                     | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| pss_3_nervous                 | Perceived stress item: feeling nervous or stressed                           | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| pss_4_confident_reverse       | Reverse-worded perceived stress item: feeling confident in handling problems | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ds_1_notifications            | Digital stress item: notifications interrupt concentration                   | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ds_2_pressure_reply           | Digital stress item: pressure to reply quickly                               | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ds_3_information_overload     | Digital stress item: feeling overloaded by online information                | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ds_4_multitasking             | Digital stress item: multitasking across digital platforms                   | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ds_5_sleep_disruption         | Digital stress item: digital use disrupts sleep                              | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ds_6_online_comparison        | Digital stress item: online comparison with others                           | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ams_1_enjoy_learning          | Academic motivation item: enjoyment of learning                              | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ams_2_effort                  | Academic motivation item: effort in study tasks                              | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ams_3_career_relevance        | Academic motivation item: perceived relevance for future career              | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ams_4_persistence             | Academic motivation item: persistence when material is difficult             | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ams_5_interest                | Academic motivation item: interest in study topics                           | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| who_1_cheerful                | Well-being item: feeling cheerful                                            | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| who_2_calm                    | Well-being item: feeling calm                                                | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| who_3_active                  | Well-being item: feeling active                                              | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| who_4_rested                  | Well-being item: feeling rested                                              | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| who_5_interested              | Well-being item: feeling interested in daily activities                      | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ea_1_worry                    | Exam anxiety item: worry before exams                                        | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ea_2_tension                  | Exam anxiety item: physical tension before exams                             | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ea_3_avoidance                | Exam anxiety item: avoidance of exam preparation                             | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| ea_4_concentration_difficulty | Exam anxiety item: difficulty concentrating due to exam worry                | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| academic_satisfaction         | Single item: satisfaction with studies                                       | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| research_methods_confidence   | Single item: confidence in research methods/statistics                       | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| help_seeking_intention        | Single item: willingness to seek help when academically stressed             | 1 = strongly disagree to 5 = strongly agree; missing values possible | Likert-type numeric |
| perceived_stress_score        | Mean score of perceived stress items after reverse scoring relevant items    | 1-5                                                                  | scale score         |
| digital_stress_score          | Mean score of digital stress items                                           | 1-5                                                                  | scale score         |
| academic_motivation_score     | Mean score of academic motivation items                                      | 1-5                                                                  | scale score         |
| wellbeing_score               | Mean score of well-being items                                               | 1-5                                                                  | scale score         |
| exam_anxiety_score            | Mean score of exam anxiety items                                             | 1-5                                                                  | scale score         |
