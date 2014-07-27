Getting and Cleaning Data Peer Assignment
=========================================

### Introduction

The code in this repository is built for [Getting and Cleaning Data's] [1]
class peer assignment. The objective of the assignment is to use the [Human
Activity Recognition dataset] [2] from the UCI Repository and create a tidy
dataset with the following requirements:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

This functionality is implemented in the file run_analysis.R

### Usage instructions

To use, simply source "run_analysis.R" in R. 

```
setwd("/path/to/repo")
source("run_analysis.R")
```

Some configuration options are available in "settings.R" 

*data_dir*: the directory where the raw data is downloaded and where the tidy
dataset is saved  

*data_url*: the URL to download the raw data from the assignment  

*input_data*: the name of the input data used in raw_analysis.R, this is also
the name that the raw data will be saved under when downloading the data  

*output_data*: the name of the tidy datafile output by run_analysis.R

### Codebook
To view the codebook, read CodeBook.md located in this repository

[1]: https://www.coursera.org/course/getdata
[2]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones