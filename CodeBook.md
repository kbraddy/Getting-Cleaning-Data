---
title: "CodeBook"
author: "Karen Braddy"
date: "Thursday, January 22, 2015"
output: html_document
---
About data set:
This is the data for 30 volunteers who each performed 6 activities while wearing a Samsung Galaxy S3.  The dataset was randomly partitioned into two data sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.

##Raw Data

The raw data for this project is from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Additional information on this data set can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

For this project the following files were used:

  * X_train and y_train which contain the train data set and labels
  * X_test and Y_train which contain the test data set and labels
  * subject_train & subject_test which identifies the subject who performed the activity
  * features which contain all the types of data collected
  * activity_labels which list the activities performed
  
##Process
  * Added column to train & test data for features
  * Added column to train & test data for activity
  * The train & test data are combined with labels
  * The train & test data are combined into one data set
  * Find column names with mean & std
  * Create data set with just the columns needed
  * Label activity
  * Apply mean to subject/activity
  
##Final
  * Creates tidy.txt with final data set
  
   
