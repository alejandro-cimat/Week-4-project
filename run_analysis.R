# 0) Loading data sets and libraries
library(dplyr)

X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
subject_train <- read.table("subject_train.txt")
subject_test <- read.table("subject_test.txt")

y_train <- bind_cols(y_train, subject_train)
y_test <- bind_cols(y_test, subject_test)

colnames(y_train) <- c("Activity", "Subject_ID")
colnames(y_test) <- c("Activity", "Subject_ID")

# 1) Merges the training and the test sets to create one data set.
X <- bind_rows(X_train, X_test)
y <- bind_rows(y_train, y_test)

# 2) Extracts only the measurements on the mean and standard deviation for each measurement.
Means <- X %>% summarise( across(V1:V561, mean) )
SDs <- X %>% summarise( across(V1:V561, sd) )

# 3) Uses descriptive activity names to name the activities in the data set
labels <- read.table("activity_labels.txt")

for (i in 1:6)
    y[y$Activity == i,1] <- labels$V2[i]

# 4) Appropriately labels the data set with descriptive variable names. 
features <- read.table("features.txt")
colnames(X) <- features$V2

# 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
df <- bind_cols(X, y)
df <- df %>% 
    group_by(Activity, Subject_ID) %>%
    summarise( across( where(is.numeric), mean ) )
    
write.table(df, file="tidy_data.txt", row.name=FALSE)
