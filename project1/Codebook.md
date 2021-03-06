# Codebook - Getting and Cleaning Data - Project 1

This document explains about source data sets, extracting, consolidating, processing, column nameing and creating Tidy dataset


**Source data sets**

- subject file - contains details about Persons from who data is collected
- Y file - list activiites that are obsorved
- x file - obsorved data

The features in this data are from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These are time domain signals (prefix-ed with 't' to denote time) were captured at a constant rate of 50 Hz. They were filtered using a median filter and 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). The magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Fast Fourier Transform (FFT) was applied to these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. ( 'f' is used to indicate frequency domain signals). These signals were used to estimate variables of the feature vector for each pattern: (XYZ is used to denote 3-axial signals in the X, Y and Z directions)

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

**Tidy Data Set**


* Training and Test data of Subject, Activity and Obsorved data combined first
* Traiining and Test data merged together to have all related in one dataset
* The mean and standard deviation were estimated from these signals.
* Extracted Mean and Standard deviation data
* Activity names included from Activity file to identify clearly
* Variable names changed to identify clearly


**Source data and Tidy data variables**


Raw data set|Tidy data set
:-----------|:-------------
subject|Subject
label|Activity
tBodyAct-mean()-X|tBodyActMeanX
tBodyAct-mean()-Y|tBodyActMeanY
tBodyAct-mean()-Z|tBodyActMeanZ
tBodyAct-std()-X|tBodyActStdX
tBodyAct-std()-Y|        tBodyActStdY
tBodyAct-std()-Z|tBodyActStdZ
tGravityAct-mean()-X|tGravityActMeanX
tGravityAct-mean()-Y|tGravityActMeanY
tGravityAct-mean()-Z|tGravityActMeanZ
tGravityAct-std()-X|tGravityActStdX
tGravityAct-std()-Y|tGravityActStdY
tGravityAct-std()-Z|tGravityActStdZ
tBodyActJerk-mean()-X|tBodyActJerkMeanX
tBodyActJerk-mean()-Y|tBodyActJerkMeanY
tBodyActJerk-mean()-Z|tBodyActJerkMeanZ
tBodyActJerk-std()-X|tBodyActJerkStdX
tBodyActJerk-std()-Y|tBodyActJerkStdY
tBodyActJerk-std()-Z|tBodyActJerkStdZ
tBodyGyro-mean()-X|tBodyGyroMeanX
tBodyGyro-mean()-Y|tBodyGyroMeanY
tBodyGyro-mean()-Z|tBodyGyroMeanZ
tBodyGyro-std()-X|tBodyGyroStdX
tBodyGyro-std()-Y|tBodyGyroStdY
tBodyGyro-std()-Z|tBodyGyroStdZ
tBodyGyroJerk-mean()-X|tBodyGyroJerkMeanX
tBodyGyroJerk-mean()-Y|BodyGyroJerkMeanY
tBodyGyroJerk-mean()-Z|tBodyGyroJerkMeanZ
tBodyGyroJerk-std()-X|tBodyGyroJerkStdX
tBodyGyroJerk-std()-Y|tBodyGyroJerkStdY
tBodyGyroJerk-std()-Z|tBodyGyroJerkStdZ
tBodyActMag-mean()|tBodyActMagMean
tBodyActMag-std()|tBodyActMagStd
tGravityActMag-mean()|tGravityActMagMean
tGravityActMag-std()|tGravityActMagStd
tBodyActJerkMag-mean()|tBodyActJerkMagMean
tBodyActJerkMag-std()|tBodyActJerkMagStd
tBodyGyroMag-mean()|tBodyGyroMagMean
tBodyGyroMag-std()|tBodyGyroMagStd
tBodyGyroJerkMag-mean()|tBodyGyroJerkMagMean
tBodyGyroJerkMag-std()|tBodyGyroJerkMagStd
fBodyAct-mean()-X|fBodyActMeanX
fBodyAct-mean()-Y|fBodyActMeanY
fBodyAct-mean()-Z|fBodyActMeanZ
fBodyAct-std()-X|fBodyActStdX
fBodyAct-std()-Y|fBodyActStdY
fBodyAct-std()-Z|fBodyActStdZ
fBodyActJerk-mean()-X|fBodyActJerkMeanX
fBodyActJerk-mean()-Y|fBodyActJerkMeanY
fBodyActJerk-mean()-Z|fBodyActJerkMeanZ
fBodyActJerk-std()-X|fBodyActJerkStdX
fBodyActJerk-std()-Y|fBodyActJerkStdY
fBodyActJerk-std()-Z|fBodyActJerkStdZ
fBodyGyro-mean()-X|fBodyGyroMeanX
fBodyGyro-mean()-Y|fBodyGyroMeanY
fBodyGyro-mean()-Z|fBodyGyroMeanZ
fBodyGyro-std()-X|fBodyGyroStdX
fBodyGyro-std()-Y|fBodyGyroStdY
fBodyGyro-std()-Z|fBodyGyroStdZ
fBodyActMag-mean()|fBodyActMagMean
fBodyActMag-std()|fBodyActMagStd
fBodyBodyActJerkMag-mean()|fBodyActJerkMagMean
fBodyBodyActJerkMag-std()|fBodyActJerkMagStd
fBodyBodyGyroMag-mean()|fBodyGyroMagMean
fBodyBodyGyroMag-std()|fBodyGyroMagStd
fBodyBodyGyroJerkMag-mean()|fBodyGyroJerkMagMean
fBodyBodyGyroJerkMag-std()|fBodyGyroJerkMagStd
