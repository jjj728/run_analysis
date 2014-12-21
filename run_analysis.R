
# Read input files.
x_test <- read.table("./data/UCI HAR Dataset/test/x_test.txt")
x_train <- read.table("./data/UCI HAR Dataset/train/x_train.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
features <- read.table("./data/UCI HAR Dataset/features.txt")

# Merge datasets and rename the columns.
merged_x <- rbind(x_train, x_test)
merged_y <- rbind(y_train, y_test)
merged_subject <- rbind(subject_train, subject_test)
temp_merged_data <- cbind(merged_subject, merged_y)

colnames(merged_x) <- features[,2]
colnames(temp_merged_data) <- c("subject", "activity")

merged_data <- cbind(temp_merged_data, merged_x)

# Replace values by names in "activity" column.
merged_data$activity[merged_data$activity == 1] <- "walking"
merged_data$activity[merged_data$activity == 2] <- "walking_upstairs"
merged_data$activity[merged_data$activity == 3] <- "walking_downstairs"
merged_data$activity[merged_data$activity == 4] <- "sitting"
merged_data$activity[merged_data$activity == 5] <- "standing"
merged_data$activity[merged_data$activity == 6] <- "laying"

# Obtain the measurements on mean and standard deviation.

mean_data <- merged_data[, grepl("mean", names(merged_data))]
Mean_data <- merged_data[, grepl("Mean", names(merged_data))]
mean_merged_data <- cbind(mean_data, Mean_data)

std_data <- merged_data[, grepl("std", names(merged_data))]
mean_std_data <- cbind(mean_merged_data, std_data)

sub_act_data <- merged_data[,1:2]

mean_std_merged_data <- cbind(sub_act_data, mean_std_data)

# Calculate the averaged of each variable. 
data_avg <- aggregate(mean_std_merged_data[,3:88],list(mean_std_merged_data$activity,mean_std_merged_data$subject),mean)

names(data_avg)[2]<-paste("subject")
names(data_avg)[1]<-paste("activity")

# Output the dataset
write.table(data_avg, file = "step_5_tidy_data.txt", row.names = FALSE, col.names = TRUE, qmethod = c("escape", "double"),)
