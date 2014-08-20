#Read datasets into R
##test datasets
test.data <- read.table("./test/X_test.txt")
test.subjects <- read.table("./test/subject_test.txt")
test.labels <- read.table("./test/y_test.txt")
##train datasets
train.data <- read.table("./train/X_train.txt")
train.subjects <- read.table("./train/subject_train.txt")
train.labels <- read.table("./train/y_train.txt")
##variable names
Vnames <- read.table("./features.txt")
Vnames <- Vnames[, 2]
Vnames <- as.character(Vnames)
#Reshape datasets
test <- cbind(test.subjects, test.labels, test.data)
train <- cbind(train.subjects, train.labels, train.data)
colnames(test) <- c("subjects", "labels", Vnames)
colnames(train) <- c("subjects", "labels", Vnames)
#Merge test and train
data <- rbind(test, train)
#Extract mean and std measurements
judge <- grepl("mean()", Vnames, fixed = T) | grepl("std()", Vnames, fixed = T)
exData <- data[, c("subjects", "labels", Vnames[judge])]
#Use descriptive names to name activities
descrip <- read.table("./activity_labels.txt")
descrip <- as.character(descrip[, 2])
exData$labels <- descrip[exData$labels]
#Appropriately labels the dataset with descriptive variable names
colnames <- colnames(exData)
colnames <- gsub("\\(|\\)", "", colnames)
colnames <- gsub("-", ".", colnames)
colnames(exData) <- colnames
#Create a second dataset with the average of each variable for
#each activity and each subject
library(plyr)
outData <- ddply(exData, .(subjects, labels), colwise(mean))
write.table(outData, file = "outData.txt", sep = "\t", row.names = F)

