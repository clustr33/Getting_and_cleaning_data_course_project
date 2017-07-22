## Getting and Cleaning Data - Course project
## Download the data set from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## and unzip it to the folder where run_analysis.R is located

# Labels for activity indices
activities <- c("walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying")

# Load test data and its corresponding activity data
# Label the activity data and merge it into the test data frame
testdata <- read.table("UCI HAR Dataset/test/X_test.txt")
testactivities <- read.table("UCI HAR Dataset/test/y_test.txt")
testdata$activity <- activities[testactivities[,1]]
testdata$subject <- read.table("UCI HAR Dataset/test/subject_test.txt")$V1

# Load train data and its corresponding activity data
# Label the activity data and merge it into the train data frame
traindata <- read.table("UCI HAR Dataset/train/X_train.txt")
trainactivities <- read.table("UCI HAR Dataset/train/y_train.txt")
traindata$activity <- activities[trainactivities[,1]]
traindata$subject <- read.table("UCI HAR Dataset/train/subject_train.txt")$V1


## Merge the two data frames, name the columns and scrap unnecessary columns

# Merge
alldata <- rbind(traindata, testdata)

# Name the columns by using features.txt as a source
featurefile <- read.table("UCI HAR Dataset/features.txt")
colnames(alldata)[1:(ncol(alldata)-2)] <- as.character(featurefile[,2])

# Keep only the mean and std variables (+ activity and subject labels)
alldata <- alldata[,grep("mean\\(\\)|std\\(\\)|activity|subject", names(alldata))]


## Calculate means by Activity and Subject with plyr.ddply (split, apply and combine)

library(plyr)
tidy <- ddply(alldata, c("activity", "subject"), colwise(mean))

## Write output
write.table(tidy, "tidy.txt", row.names=false)

