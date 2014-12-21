
Getting and Cleaning Data Course Project

-------------------
Project Description
-------------------
The project aims to analyze the data of human activity recognition using smartphone. Original data is from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description of the data is available:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

-----------------
Project Procedure
-----------------
1. Merge the test and train datasets into one dataset.
2. Extracts only the measurements on the mean and standard deviation in the dataset.
3. Replace the values by names in "activity" column.
4. Calculate the average of each variable for each activity and each subject in the dataset.

-----------------
Project files
-----------------
(1) A R script named run_analysis.R to perform the analysis.
(2) A README.md file includes the details of the project.
(3) A code book describing the variables, i.e., column names. 

-----------------
Script Usage
-----------------

1. By default, the orginal data should be downloaded to "./data/" in working directory, otherwise the path at the beginning of the script should be changed.

2. Once the data path is specified, NO extra parameters are required to run the code. With successful execution, an output file named step_5_tidy_data.txt should be generated in your working directory.

3. You may have memory allocation issue due to the large input datatsets(train/X_train.txt and test/X_test.txt).
4. 


