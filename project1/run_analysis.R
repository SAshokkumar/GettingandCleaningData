
## Loading packages

library("data.table")
library("reshape2")

## Loading data
# Subject files
subjectTrain <- read.table("./Dataset/train/subject_train.txt")
subjectTest <- read.table("./Dataset/test/subject_test.txt")

# X files
xTrain <- read.table("./Dataset/train/X_train.txt")
xTest <- read.table("./Dataset/test/X_test.txt")

# Y files
yTrain <- read.table("./Dataset/train/Y_train.txt")
yTest <- read.table("./Dataset/test/Y_test.txt")

## Setting column names
names(subjectTrain) <- "Subject"
names(subjectTest) <- "Subject"

features <- read.table("./dataset/features.txt")
names(xTrain) <- features$V2
names(xTest) <- features$V2

names(yTrain) <- "Activity"
names(yTest) <- "Activity"


## Merging train and test sets
train <- cbind(subjectTrain, yTrain, xTrain)
test <- cbind(subjectTest,  yTest, xTest)
rm(subjectTrain, yTrain, xTrain)
rm(subjectTest,  yTest, xTest)

## Creating one data set
data <- rbind(train, test)
rm(train,test)

## Extracting the mean and standard deviation
mean_std <- grepl("mean\\(\\)", names(data)) | grepl("std\\(\\)", names(data))
mean_std[1:2] <- TRUE
data <- data[, mean_std]
data$Activity <- factor(data$Activity, labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

##Creating tiday data set
modified <- melt(data, id=c("Subject","Activity"))
tidyData <- dcast(modified, Subject+Activity ~ variable, mean)

##Updating names
nameDt <- names(tidyData)
nameDt <- gsub('-mean', 'Mean', nameDt)
nameDt <- gsub('-std', 'StdDev',nameDt)
nameDt <- gsub('Acc', 'Act', nameDt)
nameDt <- gsub('BodyBody', 'Body', nameDt)
nameDt <- gsub('[()-]', '', nameDt)
setnames(tidyData, nameDt)

##writing tidy data to file
write.table(tidyData, "tidyData.txt", row.name=FALSE)
