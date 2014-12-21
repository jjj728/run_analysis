
----------------------------------------
Getting and Cleaning Data Course Project
----------------------------------------

-------------------
Project Description
-------------------
The project aims to analyze the data of human activity recognition using smartphone. Original data is from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description of the data is available:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

-----------------
Analysis procedure
-----------------
1. Merge the test and train datasets into one dataset.
2. Rename the variables, i.e., column names in the dataset.
3. Extracts only the measurements on the mean and standard deviation in the dataset.
4. Replace the values by names in "activity" column.
5. Calculate the average of each variable for each activity and each subject in the dataset.

-----------------
Project files
-----------------
(1) A R script named run_analysis.R to perform the analysis.
(2) A README.md file includes the details of the project.
(3) A code book describing the variables, i.e., column names. 

-------------
Script Usage
-------------

1. By default, the orginal data should be downloaded to "./data/" in working directory, otherwise the path at the beginning of the script should be changed.

2. Once the data path is specified, NO extra parameters are required to run the code. With successful execution, an output file named step_5_tidy_data.txt should be generated in your working directory.

3. You may have memory allocation issue due to the large input datatsets(train/X_train.txt and test/X_test.txt).

-------------------
Contact information
-------------------

Contact me if you have quetions about this project: jjj1304@gmail.com

-----------------
Acknowledgement
-----------------
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.




