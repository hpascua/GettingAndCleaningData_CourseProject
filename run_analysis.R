# Open the dplyr library
library(dplyr)

# List of features (column/variable names)
features <- read.table("UCI Har Dataset/features.txt")[,2]

# List of activities
activities <- read.table("UCI Har Dataset/activity_labels.txt")

# Test data set
x_test <- read.table("UCI Har Dataset/test/X_test.txt", col.names=features)
y_test <- read.table("UCI Har Dataset/test/Y_test.txt", col.names="activity")
subject_test <- read.table("UCI Har Dataset/test/subject_test.txt", 
	col.names="subject")
test <- cbind(y_test,subject_test,x_test)

# Train data set
x_train <- read.table("UCI Har Dataset/train/X_train.txt", col.names=features)
y_train <- read.table("UCI Har Dataset/train/Y_train.txt", col.names="activity")
subject_train <- read.table("UCI Har Dataset/train/subject_train.txt", col.names="subject")
train <- cbind(y_train,subject_train,x_train)

# Merge the two data sets
dataset1 <- rbind(test,train)

# Remove the two data subsets used to clear some space
rm(x_test, y_test, subject_test, test, x_train, y_train, subject_train, train)

# Column indices for means and standard deviations
indices <- grep("[.*](mean|std)[.*]", names(dataset1))

# Extract the necessary variables for each measurement
dataset1 <- select(dataset1, activity, subject, indices)

# Replace values for activity column with the actual labels
dataset1 <- mutate(dataset1,
	activity = inner_join(dataset1,activities,
		by=c("activity" = "V1"))$V2)

# Label the variables properly
labels <- c("Activity","Subject",
	"tBodyAcc_X_Mean","tBodyAcc_Y_Mean","tBodyAcc_Z_Mean", 
	"tBodyAcc_X_Std","tBodyAcc_Y_Std","tBodyAcc_Z_Std",
	"tGravityAcc_X_Mean","tGravityAcc_Y_Mean","tGravityAcc_Z_Mean",
	"tGravityAcc_X_Std","tGravityAcc_Y_Std","tGravityAcc_Z_Std",
	"tBodyAccJerk_X_Mean","tBodyAccJerk_Y_Mean","tBodyAccJerk_Z_Mean",
	"tBodyAccJerk_X_Std","tBodyAccJerk_Y_Std","tBodyAccJerk_Z_Std",
	"tBodyGyro_X_Mean","tBodyGyro_Y_Mean","tBodyGyro_Z_Mean",
	"tBodyGyro_X_Std","tBodyGyro_Y_Std","tBodyGyro_Z_Std",
	"tBodyGyroJerk_X_Mean","tBodyGyroJerk_Y_Mean","tBodyGyroJerk_Z_Mean",
	"tBodyGyroJerk_X_Std","tBodyGyroJerk_Y_Std","tBodyGyroJerk_Z_Std",
	"tBodyAccMag_Mean","tBodyAccMag_Std",
	"tGravityAccMag_Mean","tGravityAccMag_Std",
	"tBodyAccJerkMag_Mean","tBodyAccJerkMag_Std",
	"tBodyGyroMag_Mean","tBodyGyroMag_Std",
	"tBodyGyroJerkMag_Mean","tBodyGyroJerkMag_Std",
	"fBodyAcc_X_Mean","fBodyAcc_Y_Mean","fBodyAcc_Z_Mean", 
	"fBodyAcc_X_Std","fBodyAcc_Y_Std","fBodyAcc_Z_Std",
	"fBodyAccJerk_X_Mean","fBodyAccJerk_Y_Mean","fBodyAccJerk_Z_Mean",
	"fBodyAccJerk_X_Std","fBodyAccJerk_Y_Std","fBodyAccJerk_Z_Std",
	"fBodyGyro_X_Mean","fBodyGyro_Y_Mean","fBodyGyro_Z_Mean",
	"fBodyGyro_X_Std","fBodyGyro_Y_Std","fBodyGyro_Z_Std",
	"fBodyAccMag_Mean","fBodyAccMag_Std",
	"fBodyAccJerkMag_Mean","fBodyAccJerkMag_Std",
	"fBodyGyroMag_Mean","fBodyGyroMag_Std",
	"fBodyGyroJerkMag_Mean","fBodyGyroJerkMag_Std")

names(dataset1) <- labels

# Get a second, independent tidy data set with the average of each variable 
# for each activity and each subject
dataset2 <- dataset1 %>%
	group_by(Activity,Subject) %>%
	summarize(across(, ~mean(.x,na.rm=TRUE),
		.names="Average_{col}"))

# Write the output in a text file
write.table(dataset2,"tidy_data.txt",row.names=FALSE)
