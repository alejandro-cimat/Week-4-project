# Week-4-project
Repo for the final assignment for the "Getting and Cleaning Data" course from Coursera.

Before starting:

- Download and unzip the dataset, then place the script "run_analysis.R" in the same directory as the decompressed directory "UCI HAR Dataset". 

Running the script:

- Just run the code.
- It runs following the directions enunciated in the activity instructions.

After running the code:

- The file "tidy_data.txt" will be created at the working directory. It contains the asked dataset organized by activity (6 activities), then by subject (30 subjects), leading to a 563 x 180 table.

Code book description of "tidy_data.txt":

It has 563 columns, described as follows:

- Column 1: (Activity) Each of the six possible activities listed in the "activity_labels.txt" file.
- Column 2: (Subject_ID) Each of the 30 subject ids listed in the "subject_train.txt" and "subject_test.txt" files.
- Columns 3:563 (...) They are the same columns as in "X_train.txt". However, their names have been changed to those in "features.txt"

It has 180 rows corresponding to the mean for each Activity and each Subject_ID. Therefore, we have 180 rows = 6 activities x 30 subjects.
