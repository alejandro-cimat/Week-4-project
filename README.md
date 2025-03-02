# Week-4-project
Repo for the final assignment for the "Getting and Cleaning Data" course from Coursera.

Before starting:

- Download and unzip the dataset, then place the script "run_analysis.R" in the same directory as the decompressed directory "UCI HAR Dataset". 

Running the script:

- Just run the code.
- It runs following the directions enunciated in the activity instructions:

0) Loading data sets and libraries
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


After running the code:

- The file "tidy_data.txt" will be created at the working directory. It contains the asked dataset organized by activity (6 activities), then by subject (30 subjects), leading to a 563 x 180 table.

Code book description of "tidy_data.txt":

It has 563 columns, described as follows:

- Column 1: (Activity) Each of the six possible activities listed in the "activity_labels.txt" file.
- Column 2: (Subject_ID) Each of the 30 subject ids listed in the "subject_train.txt" and "subject_test.txt" files.
- Columns 3:563 (...) They are the same columns as in "X_train.txt". However, their names have been changed to those in "features.txt"

It has 180 rows corresponding to the mean for each Activity and each Subject_ID. Therefore, we have 180 rows = 6 activities x 30 subjects.
