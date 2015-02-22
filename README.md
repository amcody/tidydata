This script takes as input the UCI (University of California, Irvine) Human Activity Recognition Using Smartphones Data Set.
This is a set of experiments carried out on a group of 30 subjects who performed each of six activities (walking, walking
up stars, walking down stars, sitting, and standing) while wearing a smartphone. The experimental measurements (561 in total)
involve accelerometer and gyroscope data recorded from the phone. The script outputs a text table summarizing these
measurements for each subject and each activity.

Two raw datasets are employed:
1) Inertia datasets, including triaxial acceleration and angular velocity time series, sampled at a 50 Hz rate.
  These were acquired for each subject during each activity. They were used to produce the following:
2) A 561-element vector of motion "features," i.e., variables calculated on the intertial datasets in the time and frequency domains.
The datasets are split into a "training" and a "testing" set.

Once the dataset is downloaded and unzipped (imperative for the script to work), these raw datasets can be found in the following directories:
intertial datasets: test/Inertial Signals, train/Inertial Signals 
feature data: test/X_test.txt, train/X_test.txt

Additional data linking the subject ids and the activity names to the calculated features are found in:
test/subject_test.txt, train/subject_test.txt (subject ids for each feature vector)
test/y_test.txt, train/y_test.txt (activities for each feature vector)
activity_labels.txt (activity names)

The script combines all of this data into a single data frame with columns of subject, activity performed, and the various feature measurements.
It then takes a subset of this data frame, which only includes features that involve a mean or standard deviation.
Finally, since each subject performed each activity multiple times, a summary table is output averaging over each feature for each
combination of subject and activity. The result is a tidy table called meandata_groups.txt, in the directory where the script is run.
This *must* be the top-level directory, i.e., the one that contains the activity_labels.txt file and the train and test directories.
In addition, the dplyr R package must be installed.

The following are the steps carried by the script:
1)Read in the training datasets, including feature measurements, and corresponding subject ids and activities.
2)Take the feature data frame and bind on columns of subject, activity, and a label denoting that this is training data (all column entries are "training")
3)Read in the feature names, which will become column names.
4)Before setting the column names, clean up the feature names so as to omit typos and characters that may pose a problem for R.
5)Set the column names
6)Repeat steps 1-5 for the test dataset
7)Combine the training and test datasets into a new dataframe called alldata
8)Extract only columns that involve a mean or a standard deviation feature, and save them to a new data frame called meandata
9)Bind the activity and subject data back into this new data frame
10)Change the activity labels from numeric values to descriptive labels, using the following translation from activity_labels.txt:
   1 WALKING
   2 WALKING_UPSTAIRS
   3 WALKING_DOWNSTAIRS
   4 SITTING
   5 STANDING
   6 LAYING
11)Group meandata by subject and activity
12)Print a summary of average values for each feature, as a function of subject and activity.
 This summary is stored in the working directory, under meandata_groups.txt.

The final output may be read back into R by using the command data <- read.table("meandata_groups.txt",header=TRUE).
It meets the criteria for a tidy dataset, since:
1)Each variable forms a column- in this case the subject, activity, and measured features
2)Each observation forms a row
3)The table comprises one type of observational unit- in this case measurements made as part of the Human Activity Recognition Using Smartphones experiment
as espoused by Hadley Wickham in his article Tidy Data (http://vita.had.co.nz/papers/tidy-data.pdf).

A description of each variable (i.e., column in the output table) is provided in the attached code book.
