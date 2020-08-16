# CodeBook
This file describes the variables, the data, and any transformations or work performed to clean up the original data.  

In the R script "run_analysis.R", two datasets were actually created: dataset1 and dataset2.

## dataset1
This dataset extracts the mean and standard deviation variables from the original dataset (which was created by merging
both test and training data), as well as the subject ID and the activity description for each observation recorded. In
addition, the column names were made simpler for easier reading and better understanding. The list below shows the 
columns found in this dataset, along with a short description for each:

1. Activity: the description of the activity done
2. Subject: the ID of the subject that performed the activity
3. tBodyAcc_X_Mean: mean body linear acceleration signal along the X axis in the time domain
4. tBodyAcc_Y_Mean: mean body linear acceleration signal along the Y axis in the time domain
5. tBodyAcc_Z_Mean: mean body linear acceleration signal along the Z axis in the time domain
6. tBodyAcc_X_Std: standard deviation of the body linear acceleration signal along the X axis in the time domain
7. tBodyAcc_Y_Std: standard deviation of the body linear acceleration signal along the Y axis in the time domain
8. tBodyAcc_Z_Std: standard deviation of the body linear acceleration signal along the Z axis in the time domain
9. tGravityAcc_X_Mean: mean gravity linear acceleration signal along the X axis in the time domain
10. tGravityAcc_Y_Mean: mean gravity linear acceleration signal along the Y axis in the time domain
11. tGravityAcc_Z_Mean: mean gravity linear acceleration signal along the Z axis in the time domain
12. tGravityAcc_X_Std: standard deviation of the gravity linear acceleration signal along the X axis in the time domain
13. tGravityAcc_Y_Std: standard deviation of the gravity linear acceleration signal along the Y axis in the time domain
14. tGravityAcc_Z_Std: standard deviation of the gravity linear acceleration signal along the Z axis in the time domain
15. tBodyAccJerk_X_Mean: mean body linear acceleration jerk signal along the X axis in the time domain
16. tBodyAccJerk_Y_Mean: mean body linear acceleration jerk signal along the Y axis in the time domain
17. tBodyAccJerk_Z_Mean: mean body linear acceleration jerk signal along the Z axis in the time domain
18. tBodyAccJerk_X_Std: standard deviation of the body linear acceleration jerk signal along the X axis in the time domain
19. tBodyAccJerk_Y_Std: standard deviation of the body linear acceleration jerk signal along the Y axis in the time domain
20. tBodyAccJerk_Z_Std: standard deviation of the body linear acceleration jerk signal along the Z axis in the time domain
21. tBodyGyro_X_Mean: mean body angular velocity signal along the X axis in the time domain
22. tBodyGyro_Y_Mean: mean body angular velocity signal along the Y axis in the time domain
23. tBodyGyro_Z_Mean: mean body angular velocity signal along the Z axis in the time domain
24. tBodyGyro_X_Std: standard deviation of the body angular velocity signal along the X axis in the time domain
25. tBodyGyro_Y_Std: standard deviation of the body angular velocity signal along the Y axis in the time domain
26. tBodyGyro_Z_Std: standard deviation of the body angular velocity signal along the Z axis in the time domain
27. tBodyGyroJerk_X_Mean: mean body angular velocity jerk signal along the X axis in the time domain
28. tBodyGyroJerk_Y_Mean: mean body angular velocity jerk signal along the Y axis in the time domain
29. tBodyGyroJerk_Z_Mean: mean body angular velocity jerk signal along the Z axis in the time domain
30. tBodyGyroJerk_X_Std: standard deviation of the body angular velocity jerk signal along the X axis in the time domain
31. tBodyGyroJerk_Y_Std: standard deviation of the body angular velocity jerk signal along the Y axis in the time domain
32. tBodyGyroJerk_Z_Std: standard deviation of the body angular velocity jerk signal along the Z axis in the time domain
33. tBodyAccMag_Mean: mean magnitude of the body linear acceleration signal in the time domain
34. tBodyAccMag_Std: standard deviation of the magnitude of the body linear acceleration signal in the time domain
35. tGravityAccMag_Mean: mean magnitude of the gravity linear acceleration signal in the time domain
36. tGravityAccMag_Std: standard deviation of the magnitude of the gravity linear acceleration signal in the time domain
37. tBodyAccJerkMag_Mean: mean magnitude of the body linear acceleration jerk signal in the time domain
38. tBodyAccJerkMag_Std: standard deviation of the magnitude of the body linear acceleration jerk signal in the time domain
39. tBodyGyroMag_Mean: mean magnitude of the body angular velocity signal in the time domain
40. tBodyGyroMag_Std: standard deviation of the magnitude of the body angular velocity signal in the time domain
41. tBodyGyroJerkMag_Mean: mean magnitude of the body angular velocity jerk signal in the time domain
42. tBodyGyroJerkMag_Std: standard deviation of the magnitude of the body angular velocity jerk signal in the time domain
43. fBodyAcc_X_Mean: mean body linear acceleration signal along the X axis in the frequency domain
44. fBodyAcc_Y_Mean: mean body linear acceleration signal along the Y axis in the frequency domain
45. fBodyAcc_Z_Mean: mean body linear acceleration signal along the Z axis in the frequency domain
46. fBodyAcc_X_Std: standard deviation of the body linear acceleration signal along the X axis in the frequency domain
47. fBodyAcc_Y_Std: standard deviation of the body linear acceleration signal along the Y axis in the frequency domain
48. fBodyAcc_Z_Std: standard deviation of the body linear acceleration signal along the Z axis in the frequency domain
49. fBodyAccJerk_X_Mean: mean body linear acceleration jerk signal along the X axis in the frequency domain
50. fBodyAccJerk_Y_Mean: mean body linear acceleration jerk signal along the Y axis in the frequency domain
51. fBodyAccJerk_Z_Mean: mean body linear acceleration jerk signal along the Z axis in the frequency domain
52. fBodyAccJerk_X_Std: standard deviation of the body linear acceleration jerk signal along the X axis in the frequency domain
53. fBodyAccJerk_Y_Std: standard deviation of the body linear acceleration jerk signal along the Y axis in the frequency domain
54. fBodyAccJerk_Z_Std: standard deviation of the body linear acceleration jerk signal along the Z axis in the frequency domain
55. fBodyGyro_X_Mean: mean body angular velocity signal along the X axis in the frequency domain
56. fBodyGyro_Y_Mean: mean body angular velocity signal along the Y axis in the frequency domain
57. fBodyGyro_Z_Mean: mean body angular velocity signal along the Z axis in the frequency domain
58. fBodyGyro_X_Std: standard deviation of the body angular velocity signal along the X axis in the frequency domain
59. fBodyGyro_Y_Std: standard deviation of the body angular velocity signal along the Y axis in the frequency domain
60. fBodyGyro_Z_Std: standard deviation of the body angular velocity signal along the Z axis in the frequency domain
61. fBodyAccMag_Mean: mean magnitude of the body linear acceleration signal in the frequency domain
62. fBodyAccMag_Std: standard deviation of the magnitude of the body linear acceleration signal in the frequency domain
63. fBodyAccJerkMag_Mean: mean magnitude of the body linear acceleration jerk signal in the frequency domain
64. fBodyAccJerkMag_Std: standard deviation of the magnitude of the body linear acceleration jerk signal in the frequency domain
65. fBodyGyroMag_Mean: mean magnitude of the body angular velocity signal in the frequency domain
66. fBodyGyroMag_Std: standard deviation of the magnitude of the body angular velocity signal in the frequency domain
67. fBodyGyroJerkMag_Mean: mean magnitude of the body angular velocity jerk signal in the frequency domain
68. fBodyGyroJerkMag_Std: standard deviation of the magnitude of the body angular velocity jerk signal in the frequency domain

## dataset2
This dataset results in the one found in "tidy_data.txt". It transforms the data found in dataset1 by grouping them by activity and
by subject (in that order) and then getting the average value of each variable for each group.  

As the dataset contains the average value of each variable, the variable/column names have a format of "Average_\<column name\>" to 
make them easily distinguishable (for example, Average_tBodyAcc_X_Mean contains the average of the means of the body linear 
acceleration signals along the X axis in the time domain for each group).
