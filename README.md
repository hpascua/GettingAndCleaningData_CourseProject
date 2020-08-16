# GettingAndCleaningData_CourseProject
 Course Project for Getting and Cleaning Data on Coursera  
 Created by Harold Luis Pascua  
 Last Update: August 16, 2020  
 
## Table of Contents
* [About the Project](#about-the-project)
* [Files Used](#files-used)
* [How to Use](#how-to-use)

## About the Project
The project aims to create tidy data from given data collected from 
the accelerometers of a Samsung Galaxy S smartphone. More specifically,
it uses the given data to create a tidy data set that contains the average
values of each variable for each activity and each subject and output it into
a text file.  

This project was created using the following software and packages:
* R v4.0.2
* dplyr v1.0.1

## Files Used
* "README.md"
* "CodeBook.md": describes the variables, the data, and any transformations or work performed to clean up the data
* "run_analysis.R": R script that reads the data and gives the needed output
* "tidy_data.txt": the output that contains the cleaned up data
* "UCI HAR Dataset/README.md": gives an in-depth description about the data used
* "UCI HAR Dataset/activity_labels.txt": contains the codes of the activity labels and their corresponding descriptions
* "UCI HAR Dataset/features.txt": contains the codes of the features and their corresponding descriptions
* "UCI HAR Dataset/features_info.txt": gives a description for the variables in the original data set
* "UCI HAR Dataset/test/subject_test.txt": contains the ID of the subject that performed an observation on the test data
* "UCI HAR Dataset/test/X_test.txt": contains the measurements for each variable on the test data
* "UCI HAR Dataset/test/Y_test.txt": contains the activity label code for each observation on the test data
* "UCI HAR Dataset/train/subject_train.txt": contains the ID of the subject that performed an observation on the training data
* "UCI HAR Dataset/train/X_train.txt": contains the measurements for each variable on the training data
* "UCI HAR Dataset/train/Y_train.txt": contains the activity label code for each observation on the training data

## How to Use
* Open the repo directory (assuming it was cloned) in R
* Run the script to begin the analysis:
```
> source("run_analysis.R")
```
The result will be stored in "tidy_data.txt".
