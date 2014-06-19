# 1. Merges the training and test datasets to create one data set.

trainData <- read.table("./data/train/X_train.txt")
dim(trainData) # Output is 7352 x 561

trainLabel <- read.table("./data/train/y_train.txt")
dim(trainLabel) # Output is 7352 x 1

trainSubject <- read.table("./data/train/subject_train.txt")
dim(trainSubject) # Output is 7352 x 1

testData <- read.table("./data/test/X_test.txt")
dim(testData) # Output is 2947 x 561

testLabel <- read.table("./data/test/y_test.txt") 
dim(testLabel) # Output is 2947 x 1 

testSubject <- read.table("./data/test/subject_test.txt")
dim(testSubject)  # Output is 2947 x 1

joinData <- rbind(trainData, testData)
dim(joinData) # Output is (7352+2947) x 561 i.e. 10299 x 561

joinLabel <- rbind(trainLabel, testLabel)
dim(joinLabel) # Output is (7352+2947) x 1 i.e. 10299 x 1

joinSubject <- rbind(trainSubject, testSubject)
dim(joinSubject) # Output is (7352+2947) x 1 i.e. 10299 x 1

# 2. Extract only the columns containing the mean and standard deviation 
# for each measurement. 
features <- read.table("./data/features.txt")
dim(features)  # Output is 561 x 2

meanStdDevIndices <- grep("mean\\(\\)|std\\(\\)", features[, 2])
length(meanStdDevIndices) # Output is 66

joinData <- joinData[, meanStdDevIndices]
dim(joinData) # Output is 10299  x 66

names(joinData) <- features[meanStdDevIndices, 2] 

# 3. Uses descriptive activity names to name the activities in the data set
activity <- read.table("./data/activity_labels.txt")

activityLabel <- activity[joinLabel[, 1], 2]
joinLabel[, 1] <- activityLabel
names(joinLabel) <- "activity"

# 4. Appropriately labels the data set with descriptive activity names. 
names(joinSubject) <- "subject"
cleanedData <- cbind(joinSubject, joinLabel, joinData)
dim(cleanedData) # Output is 10299 x 68

# 5. Creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject. 
subjectLen <- length(table(joinSubject)) # Length is 30
activityLen <- dim(activity)[1] # Output is 6 x 1
columnLen <- dim(cleanedData)[2] # Output is 68 x 1

result <- matrix(NA, nrow=subjectLen*activityLen, ncol=columnLen) 
result <- as.data.frame(result)
colnames(result) <- colnames(cleanedData)

row <- 1
for(i in 1:subjectLen) {
    for(j in 1:activityLen) {
        result[row, 1] <- sort(unique(joinSubject)[, 1])[i]
        result[row, 2] <- activity[j, 2]
        bool1 <- i == cleanedData$subject
        bool2 <- activity[j, 2] == cleanedData$activity
        result[row, 3:columnLen] <- colMeans(cleanedData[bool1&bool2, 3:columnLen])
        row <- row + 1
    }
}

write.table(result, "activity_means.txt") # write out the second dataset