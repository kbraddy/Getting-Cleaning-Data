---
title: "README"
author: "Karen Braddy"
date: "Thursday, January 22, 2015"
output: html_document
---
Getting & Cleaning Data Project

Source dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* You should unzip the data sets and save them in the working directory
* Run the R script named run_analysis.R
* A tidy.txt file will be created after the R script has ran
* The reshape2 library should be installed prior to running script


How run_analysis.R script works:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each     
   variable for each activity and each subject.

 