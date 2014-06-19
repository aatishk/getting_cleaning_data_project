Course Project CodeBook
=======================

subject ID  
*subject*

activity ID (1: WALKING, 2: WALKING_UPSTAIRS, 3: WALKING_DOWNSTAIRS, 4: SITTING, 5: STANDING, and 6: LAYING)  
*activity*

A1. Mean and Standard Deviation of body linear acceleration signals (X, Y and Z components)  
*tBodyAcc-mean()-X*  
*tBodyAcc-mean()-Y*  
*tBodyAcc-mean()-Z*  
*tBodyAcc-std()-X*  
*tBodyAcc-std()-Y*  
*tBodyAcc-std()-Z*

A2. Mean and Standard Deviation of Euclidean norm of body linear acceleration signals  
*tBodyAccMag-mean()*  
*tBodyAccMag-std()*

B1. Mean and Standard Deviation of gravity acceleration signals (X, Y and Z components)  
*tGravityAcc-mean()-X*  
*tGravityAcc-mean()-Y*  
*tGravityAcc-mean()-Z*  
*tGravityAcc-std()-X*  
*tGravityAcc-std()-Y*  
*tGravityAcc-std()-Z*

B2. Mean and Standard Deviation of Euclidean norm of gravity acceleration signals  
*tGravityAccMag-mean()*  
*tGravityAccMag-std()*

C1. Mean and Standard Deviation of body linear acceleration jerk signals (X, Y and Z components)  
*tBodyAccJerk-mean()-X*  
*tBodyAccJerk-mean()-Y*  
*tBodyAccJerk-mean()-Z*  
*tBodyAccJerk-std()-X*  
*tBodyAccJerk-std()-Y*  
*tBodyAccJerk-std()-Z*  

C2. Mean and Standard Deviation of Euclidean norm of body linear acceleration jerk signals  
*tBodyAccJerkMag-mean()*  
*tBodyAccJerkMag-std()*

D1. Mean and Standard Deviation of body angular velocity signals (X, Y and Z components)  
*tBodyGyro-mean()-X*  
*tBodyGyro-mean()-Y*  
*tBodyGyro-mean()-Z*  
*tBodyGyro-std()-X*  
*tBodyGyro-std()-Y*  
*tBodyGyro-std()-Z*

D2. Mean and Standard Deviation of Euclidean norm of body angular velocity signals  
*tBodyGyroMag-mean()*  
*tBodyGyroMag-std()*

E1. Mean and Standard Deviation of body angular velocity jerk signals (X, Y and Z components)  
*tBodyGyroJerk-mean()-X*  
*tBodyGyroJerk-mean()-Y*  
*tBodyGyroJerk-mean()-Z*  
*tBodyGyroJerk-std()-X*  
*tBodyGyroJerk-std()-Y*  
*tBodyGyroJerk-std()-Z*  

E2. Mean and Standard Deviation of Euclidean norm of body angular velocity jerk signals  
*tBodyGyroJerkMag-mean()*  
*tBodyGyroJerkMag-std()*

F1. Mean and Standard Deviation of FFT of body linear acceleration signals (X, Y and Z components)  
*fBodyAcc-mean()-X*  
*fBodyAcc-mean()-Y*  
*fBodyAcc-mean()-Z*  
*fBodyAcc-std()-X*  
*fBodyAcc-std()-Y*  
*fBodyAcc-std()-Z*

F2. Mean and Standard Deviation of Euclidean norm of FFT of body linear acceleration signals  
*fBodyAccMag-mean()*  
*fBodyAccMag-std()*

G1. Mean and Standard Deviation of FFT of body linear acceleration jerk signals (X, Y and Z components)  
*fBodyAccJerk-mean()-X*  
*fBodyAccJerk-mean()-Y*  
*fBodyAccJerk-mean()-Z*  
*fBodyAccJerk-std()-X*  
*fBodyAccJerk-std()-Y*  
*fBodyAccJerk-std()-Z*

G2. Mean and Standard Deviation of Euclidean norm of FFT of body linear acceleration jerk signals  
*fBodyAccJerkMag-mean()*  
*fBodyAccJerkMag-std()*

H1. Mean and Standard Deviation of FFT of body angular velocity signals (X, Y and Z components)  
*fBodyGyro-mean()-X*  
*fBodyGyro-mean()-Y*  
*fBodyGyro-mean()-Z*  
*fBodyGyro-std()-X*  
*fBodyGyro-std()-Y*  
*fBodyGyro-std()-Z*

H2. Mean and Standard Deviation of Euclidean norm of FFT of body angular velocity signals  
*fBodyGyroMag-mean()*  
*fBodyGyroMag-std()*

I2. Mean and Standard Deviation of Euclidean norm of FFT of body angular velocity jerk signals  
*fBodyGyroJerkMag-mean()*  
*fBodyGyroJerkMag-std()*

There are two ID variables (subject and activity) and 8x8 + 2 = 66 feature variables. In total, there are 68 variables.

+++++++++++++
Description of the feature variables:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals *tAcc-XYZ* and *tGyro-XYZ*. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (*tBodyAcc-XYZ* and *tGravityAcc-XYZ*) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (*tBodyAccJerk-XYZ* and *tBodyGyroJerk-XYZ*). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (*tBodyAccMag*, *tGravityAccMag*, *tBodyAccJerkMag*, *tBodyGyroMag*, *tBodyGyroJerkMag*). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing *fBodyAcc-XYZ*, *fBodyAccJerk-XYZ*, *fBodyGyro-XYZ*, *fBodyAccJerkMag*, *fBodyGyroMag*, *fBodyGyroJerkMag*. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

1. tBodyAcc-XYZ
2. tGravityAcc-XYZ
3. tBodyAccJerk-XYZ
4. tBodyGyro-XYZ
5. tBodyGyroJerk-XYZ
6. tBodyAccMag
7. tGravityAccMag
8. tBodyAccJerkMag
9. tBodyGyroMag
10. tBodyGyroJerkMag
11. fBodyAcc-XYZ
12. fBodyAccJerk-XYZ
13. fBodyGyro-XYZ
14. fBodyAccMag
15. fBodyAccJerkMag
16. fBodyGyroMag
17. fBodyGyroJerkMag

The set of variables (among others) that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
