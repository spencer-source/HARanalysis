## This script works with the "UCI HAR Dataset"[1,2], downloaded .zip configuration as long as the dataset is locatable in your working directory. 

======================================================================
## Data/Dataset:

## The raw data were obtained from experiments (dataset published in 2012) which had "been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist."[1,2]  "Using its embedded accelerometer and gyroscope," triaxial linear acceleration and triaxial angular velocity, respectively, were "captured...at a constant rate of 50Hz."[1,2]

## The dataset was then "randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."[1,2]

## "The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."[1,2]

======================================================================
## Script function:

## The training and testing sets are read in and merged without grouping specifications, 
## the measurements on the mean and standard deviation for each measurement are extracted,
## the numeric coding for activities are replaced with the activity labeling,
## the resulting dataset is then grouped by two variables: subject (identifier) and activity (label),
## and a summary of averages across variables is returned. 

=======================================================================
## Sources:

## [1] Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Human Activity Recognition Using Smartphones Dataset Version 1.0. Smartlab - Non Linear Complex Systems Laboratory. DITEN - Universita degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. November 2012. 
## [2] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
