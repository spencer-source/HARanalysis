run_analysis <- function(path = "") {
        library(readr)
        library(dplyr)
        
        features <- read_table("./UCI HAR Dataset/features.txt", col_names = FALSE)
        
        subject_train <- read_table("./UCI HAR Dataset/train/subject_train.txt", col_names = c("Subject"))
        X_train <- read_table("./UCI HAR Dataset/train/X_train.txt", col_names = c(features$X1))
        y_train <- read_table("./UCI HAR Dataset/train/y_train.txt", col_names = c("Activity"))
        
        TrainingSetLab <- bind_cols(subject_train, y_train, X_train)
        
        subject_test <- read_table("./UCI HAR Dataset/test/subject_test.txt", col_names = c("Subject"))
        y_test <- read_table("./UCI HAR Dataset/test/y_test.txt", col_names = c("Activity"))
        X_test <- read_table("./UCI HAR Dataset/test/X_test.txt", col_names = c(features$X1))
        
        TestingSetLab <- bind_cols(subject_test, y_test, X_test)
        
        
        TrainTestMerge <- full_join(TestingSetLab, TrainingSetLab)
        
        
        TrainTestMeansStd <- select(TrainTestMerge, matches(c("Subject")) | matches(c("Activity")) | contains("mean") | contains("std"))
        
        TrainTestMeansStd[, 2] <- case_when(TrainTestMeansStd[, 2] == 1 ~ "Walking",
                                            TrainTestMeansStd[, 2] == 2 ~ "Walking_Upstairs",
                                            TrainTestMeansStd[, 2] == 3 ~ "Walking_Downstairs",
                                            TrainTestMeansStd[, 2] == 4 ~ "Sitting",
                                            TrainTestMeansStd[, 2] == 5 ~ "Standing",
                                            TrainTestMeansStd[, 2] == 6 ~ "Laying")
        
        TrainTestMeansStd1 <- TrainTestMeansStd %>% group_by(TrainTestMeansStd["Subject"], TrainTestMeansStd["Activity"]) %>% summarise(across(.fns = mean), .groups = "keep")
        tibble(TrainTestMeansStd1)
}