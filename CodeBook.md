#Getting and Cleaning Data, Project 2
###Data description.
###R script called run_analysis.R that does the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.



VARIABLE NAME | POSITIONS      |VARIABLE
------------- | -------------  | ------------- 
Descriptive_Activity_Name | 1 |  
 | | LAYING
 | | SITTING
 | | STANDING
 | | WALKING
 | | WALKING_DOWNSTAIRS
 | | WALKING_UPSTAIRS
subject	| 2 |  
 | |          tBodyAcc-mean()-X 
 | |            tBodyAcc-mean()-Y 
 | |            tBodyAcc-mean()-Z 
 | |             tBodyAcc-std()-X 
 | |             tBodyAcc-std()-Y 
 | |             tBodyAcc-std()-Z 
 | |         tGravityAcc-mean()-X 
 | |         tGravityAcc-mean()-Y 
 | |         tGravityAcc-mean()-Z 
 | |          tGravityAcc-std()-X 
 | |          tGravityAcc-std()-Y 
 | |          tGravityAcc-std()-Z 
 | |        tBodyAccJerk-mean()-X 
 | |        tBodyAccJerk-mean()-Y 
 | |        tBodyAccJerk-mean()-Z 
 | |         tBodyAccJerk-std()-X 
 | |         tBodyAccJerk-std()-Y 
 | |         tBodyAccJerk-std()-Z 
 | |           tBodyGyro-mean()-X 
 | |           tBodyGyro-mean()-Y 
 | |           tBodyGyro-mean()-Z 
 | |            tBodyGyro-std()-X 
 | |            tBodyGyro-std()-Y 
 | |            tBodyGyro-std()-Z 
 | |       tBodyGyroJerk-mean()-X 
 | |       tBodyGyroJerk-mean()-Y 
 | |       tBodyGyroJerk-mean()-Z 
 | |        tBodyGyroJerk-std()-X 
 | |        tBodyGyroJerk-std()-Y 
 | |        tBodyGyroJerk-std()-Z 
 | |           tBodyAccMag-mean() 
 | |            tBodyAccMag-std() 
 | |        tGravityAccMag-mean() 
 | |         tGravityAccMag-std() 
 | |       tBodyAccJerkMag-mean() 
 | |        tBodyAccJerkMag-std() 
 | |          tBodyGyroMag-mean() 
 | |           tBodyGyroMag-std() 
 | |      tBodyGyroJerkMag-mean() 
 | |       tBodyGyroJerkMag-std() 
 | |            fBodyAcc-mean()-X 
 | |            fBodyAcc-mean()-Y 
 | |            fBodyAcc-mean()-Z 
 | |             fBodyAcc-std()-X 
 | |             fBodyAcc-std()-Y 
 | |             fBodyAcc-std()-Z 
 | |        fBodyAccJerk-mean()-X 
 | |        fBodyAccJerk-mean()-Y 
 | |        fBodyAccJerk-mean()-Z 
 | |         fBodyAccJerk-std()-X 
 | |         fBodyAccJerk-std()-Y 
 | |         fBodyAccJerk-std()-Z 
 | |           fBodyGyro-mean()-X 
 | |           fBodyGyro-mean()-Y 
 | |           fBodyGyro-mean()-Z 
 | |            fBodyGyro-std()-X 
 | |            fBodyGyro-std()-Y 
 | |            fBodyGyro-std()-Z 
 | |           fBodyAccMag-mean() 
 | |            fBodyAccMag-std() 
 | |   fBodyBodyAccJerkMag-mean() 
 | |    fBodyBodyAccJerkMag-std() 
 | |      fBodyBodyGyroMag-mean() 
 | |       fBodyBodyGyroMag-std() 
 | |  fBodyBodyGyroJerkMag-mean() 
 | |   fBodyBodyGyroJerkMag-std() 
average	| 3 | average of subjects 



 
 
 
 
