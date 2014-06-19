Course Project README
=====================

This file describes how to execute "run_analysis.R" script to generate the tidy data-set.

* Unzip the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and rename the folder with "data".

* Make sure the folder "data" and the "run_analysis.R" script are both in the current working directory.

* Source the "run_analysis.R" script.

* After the script completes executing, a file titled "activity_means.txt" is generated which has 180 rows and 68 columns.

+++++++++++++++++++++++++++++

The "run_analysis.R" script performs the following steps to generate the tidy data set:

 1. Read X_train.txt, y_train.txt and subject_train.txt from the "./data/train" folder and store them in *trainData*, *trainLabel* and *trainSubject* variables respectively. 
 
 2. Read X_test.txt, y_test.txt and subject_test.txt from the "./data/test" folder and store them in *testData*, *testLabel* and *testsubject* variables respectively.  
 
 3. Concatenate *testData* to *trainData* to generate a 10299x561 data frame, *joinData*; concatenate *testLabel* to *trainLabel* to generate a 10299x1 data frame, *joinLabel*; concatenate *testSubject* to *trainSubject* to generate a 10299x1 data frame, *joinSubject*.
 
 4. Read the features.txt file from the "/data" folder and store the data in a variable called *features*. We only extract the measurements on the mean and standard deviation. This results in a 66 indices list. We get a subset of *joinData* with the 66 corresponding columns.  
    
 5. Read the activity_labels.txt file from the "./data"" folder and store the data in a variable called *activity*.
  
 6. Transform the values of *joinLabel* according to the *activity* data frame.
 
 7. Combine the *joinSubject*, *joinLabel* and *joinData* by column to get a new cleaned 10299x68 data frame, *cleanedData*. Properly name the first two columns, "subject" and "activity". The "subject" column contains integers that range from 1 to 30 inclusive; the "activity" column contains 6 kinds of activity names; the last 66 columns contain measurements that range from -1 to 1 exclusive.
  
 8. Finally, generate a tidy data set with the average of each measurement for each activity and each subject. We have 30 unique subjects and 6 unique activities, which result in a 180 combinations of the two. Then, for each combination, we calculate the mean of each measurement with the corresponding combination. So, after initializing the *result* data frame and performing the two for-loops, we get a 180x68 data frame.
 
 9. Write the *result* out to "activity_means.txt" file in current working directory. 
