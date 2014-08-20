Project_GettingandCleanningData
===============================

This R script will read the Samsung datasets in your working directory and creat a tidy dataset. The steps of the  program are as follows:

1. Reads the datasets, including both train and test, into R.
2. Reshapes and merges the train and test into one dataframe called "data".
3. Extracts only the measurements on the mean and standard deviation for each measurement to form a new dataframe called "exData".
4. Uses descriptive activity names to name the activities in the data set.
5. Appropriately labels the data set with descriptive variable names. I have lightly modified the original labels because I think they are easy to understand already.
6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject, called "outData".

