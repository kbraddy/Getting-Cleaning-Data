##Data set is group of 30 volunteers who performed 6 activities.
##70% of volunteers' data in training data set
##30% of volunteers' data in test data set

##Load and merge data sets
  setwd("C:\\Users\\Karen\\Desktop\\R Programming\\Getting and Cleaning Data\\UCI HAR Dataset")
  library(reshape2)
##read in data sets
##Data set identifies subject who performed activity for each window sample. 30
  subject_train <- read.table("./train/subject_train.txt")
##Training data set
  X_train <- read.table("./train/X_train.txt")
##Training lables
  y_train <- read.table("./train/y_train.txt")
##Data set identifies subject who performed activity for each window sample. 30
subject_test <- read.table("./test/subject_test.txt")
##Test data set
  X_test <- read.table("./test/X_test.txt")
##Test labels
  y_test <- read.table("./test/y_test.txt")
##List of all features
  features <- read.table("features.txt")
##List of activities
  activity <- read.table("activity_labels.txt")

##add column name to identify subject
  names(subject_train) <- "subjectID"
  names(subject_test) <- "subjectID"

##add column name to identify feature
  names(X_train) <- features$V2
  names(X_test) <- features$V2
  
##add column name for activity
  names(y_train) <- "activity"
  names(y_test) <- "activity"
  
##merge data into one data set
  train_data <- cbind(subject_train,y_train,X_train)
  test_data <- cbind(subject_test,y_test,X_test)
  all_data <- rbind(train_data,test_data)
  
##Extract on the measurements on the mean and standard deviation for each measurement
  ##Find columns with std or mean in name
  mean_std_col <- grepl("mean\\(\\)",names(all_data)) | grepl("std\\(\\)",names(all_data))
  
  mean_std_col[1:2] <- TRUE
  ##create data set with just std & mean columns
  mean_std_data <- all_data[,mean_std_col]
  
##Steps 3 & 4 already done
  
##Tidy data
  ##Rename activity column with descriptive factor
  mean_std_data$activity <- factor(mean_std_data$activity, labels=c("Walking","Walking Upstairs","Walking Downstairs","Sitting","Standing","Laying"))
  
  ##tidy <- merge(mean_std_data, activity$V1, by.x="activity", by.y="V2")
  ##tidy <- tidy[,!(names(tidy) %in% c("activity"))]
  
  ##create tidy data set
  melted <- melt(mean_std_data, id=c("subjectID","activity"))
  tidy <- dcast(melted, subjectID+activity ~ variable, mean)
  
  ##write tidy data set to a file
  write.table(tidy,"tidy.txt", row.names=FALSE)



