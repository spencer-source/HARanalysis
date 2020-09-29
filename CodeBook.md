## This code book modifies and updates the existing "UCI HAR Dataset" codebook[1,2]. 

## Most of the variable names inlcuded in the output dataset are recycled from the UCI dataset[1,2].

## Other than subject (identifier) and activity (label), the variables are the measurements on the mean and standard deviation for each measurement.
===================================================================================
## Features:

## "The features selected" for the "UCI HAR Dataset" "come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz."[1,2]

## "Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)."[1,2] 

## "Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)."[1,2]

## "These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag"[1,2]
=======================================================================================
## Variables:

## "The set of variables estimated from these signals..." above were numerous.[1,2] The variables estimated by the signals which are extracted by the script are mean values and standard deviations, as well as the "[a]dditional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean"[1,2]

There are 88 variables in the output dataset.
========================================================================================
## Sources:

## [1] Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Human Activity Recognition Using Smartphones Dataset Version 1.0. Smartlab - Non Linear Complex Systems Laboratory. DITEN - Universita degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. November 2012. 
## [2] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
