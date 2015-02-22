This codebook outlines the contents of the file meandata_groups.txt, which is output
by the run_analysis.R script. Data is derived from the UCI (University of California, Irvine) 
Human Activity Recognition Using Smartphones Data Set. Each observation in the dataset
is characterized by the following variables, listed as column names in the output:

Subject number:
 *Indexed 1 through 30

Activity:
 *String indicating which activity was performed:
  -walking 
  -walking upstairs
  -walking downstairs
  -sitting
  -standing
  -laying

The following feature variables and are all normalized numeric values-->

tBodyAccmeanX: mean acceleration of the body in the X direction
tBodyAccmeanY: mean acceleration of the body in the Y direction
tBodyAccmeanZ: mean acceleration of the body in the Z direction
tBodyAccstdX: standard deviation of acceleration of the body in the X direction
tBodyAccstdY: standard deviation of acceleration of the body in the Y direction
tBodyAccstdZ: standard deviation ofacceleration of the body in the Z direction
tGravityAccmeanX: mean acceleration in the X direction due to gravity
tGravityAccmeanY: mean acceleration in the Y direction due to gravity
tGravityAccmeanZ: mean acceleration in the Z direction due to gravity
tGravityAccstdX: standard deviation of acceleration in the X direction due to gravity
tGravityAccstdY: standard deviation of acceleration in the Y direction due to gravity
tGravityAccstdZ: standard deviation of acceleration in the Z direction due to gravity
tBodyAccJerkmeanX: mean jerk acceleration of the body in the X direction
tBodyAccJerkmeanY: mean jerk acceleration of the body in the Y direction
tBodyAccJerkmeanZ: mean jerk acceleration of the body in the Z direction
tBodyAccJerkstdX: standard deviation of jerk acceleration of the body in the X direction
tBodyAccJerkstdY: standard deviation of jerk acceleration of the body in the Y direction
tBodyAccJerkstdZ: standard deviation of jerk acceleration of the body in the Z direction
tBodyGyromeanX: mean angular velocity of the body in the X direction
tBodyGyromeanY: mean angular velocity of the body in the Y direction
tBodyGyromeanZ: mean angular velocity of the body in the Z direction
tBodyGyrostdX: standard deviation of angular velocity of the body in the X direction
tBodyGyrostdY: standard deviation of angular velocity of the body in the Y direction
tBodyGyrostdZ: standard deviation of angular velocity of the body in the Z direction
tBodyGyroJerkmeanX: mean jerk angular acceleration of the body in the X direction
tBodyGyroJerkmeanY: mean jerk angular acceleration of the body in the Y direction
tBodyGyroJerkmeanZ: mean jerk angular acceleration of the body in the Z direction
tBodyGyroJerkstdX: standard deviation of the jerk angular acceleration of the body in the X direction
tBodyGyroJerkstdY: standard deviation of the jerk angular acceleration of the body in the Y direction
tBodyGyroJerkstdZ: standard deviation of the jerk angular acceleration of the body in the Z direction
tBodyAccMagmean: mean magnitude of acceleration of the body
tBodyAccMagstd: standard deviation of magnitude of accerlation of the body
tGravityAccMagmean: mean magnitude of acceleration due to gravity
tGravityAccMagstd: standard deviation of magnitude of accerlation due to gravity
tBodyAccJerkMagmean: mean magnitude of jerk acceleration of the body
tBodyAccJerkMagstd: standard deviation of magnitude of jerk accerlation
tBodyGyroMagmean: mean magnitude of angular acceleration of the body
tBodyGyroMagstd: standard deviation of magnitude of angular acceleration of the body
tBodyGyroJerkMagmean: mean magnitude of jerk angular velocity of the body
tBodyGyroJerkMagstd: standard deviation of jerk angular velocity of the body
fBodyAccmeanX: mean acceleration of the body in the X direction, in the frequency domain
fBodyAccmeanY: mean acceleration of the body in the Y direction, in the frequency domain
fBodyAccmeanZ: mean acceleration of the body in the Z direction, in the frequency domain
fBodyAccstdX: standard deviation of acceleration of the body in the X direction, in the frequency domain
fBodyAccstdY: standard deviation of acceleration of the body in the Y direction, in the frequency domain
fBodyAccstdZ: standard deviation of acceleration of the body in the Z direction, in the frequency domain
fBodyAccmeanFreqX: mean frequency of acceleration of the body in the X direction, in the frequency domain
fBodyAccmeanFreqY: mean frequency of acceleration of the body in the Y direction, in the frequency domain
fBodyAccmeanFreqZ: mean frequency of acceleration of the body in the Z direction, in the frequency domain
fBodyAccJerkmeanX: mean jerk acceleration of the body in the X direction, in the frequency domain
fBodyAccJerkmeanY: mean jerk acceleration of the body in the Y direction, in the frequency domain
fBodyAccJerkmeanZ: mean jerk acceleration of the body in the Z direction, in the frequency domain
fBodyAccJerkstdX: standard deviation of jerk acceleration of the body in the X direction, in the frequency domain
fBodyAccJerkstdY: standard deviation of jerk acceleration of the body in the Y direction, in the frequency domain
fBodyAccJerkstdZ: standard deviation of jerk acceleration of the body in the Z direction, in the frequency domain
fBodyAccJerkmeanFreqX: mean frequency of jerk acceleration of the body in the X direction, in the frequency domain
fBodyAccJerkmeanFreqY: mean frequency of jerk acceleration of the body in the Y direction, in the frequency domain
fBodyAccJerkmeanFreqZ: mean frequency of jerk acceleration of the body in the Z direction, in the frequency domain
fBodyGyromeanX: mean angular velocity of the body in the X direction, in the frequency domain
fBodyGyromeanY: mean angular velocity of the body in the Y direction, in the frequency domain
fBodyGyromeanZ: mean angular velocity of the body in the Z direction, in the frequency domain
fBodyGyrostdX: standard deviation of angular velocity of the body in the X direction, in the frequency domain
fBodyGyrostdY: standard deviation of angular velocity of the body in the Y direction, in the frequency domain
fBodyGyrostdZ: standard deviation of angular velocity of the body in the Z direction, in the frequency domain
fBodyGyromeanFreqX: mean frequency of angular velocity of the body in the X direction, in the frequency domain
fBodyGyromeanFreqY: mean frequency of angular velocity of the body in the Y direction, in the frequency domain
fBodyGyromeanFreqZ: mean frequency of angular velocity of the body in the Z direction, in the frequency domain
fBodyAccMagmean: mean magnitude of acceleration of the body, in the frequency domain
fBodyAccMagstd: standard deviation of magnitude of accerlation of the body, in the frequency domain
fBodyAccMagmeanFreq: mean frequency of magnitude of acceleration of the body, in the frequency domain
fBodyAccJerkMagmean: mean magnitude of jerk acceleration of the body, in the frequency domain
fBodyAccJerkMagstd: standard deviation of jerk acceleration of the body, in the frequency domain
fBodyAccJerkMagmeanFreq: mean frequency of magnitude of jerk acceleration of the body, in the frequency domain 
fBodyGyroMagmean: mean magnitude of angular velocity of the body, in the frequency domain
fBodyGyroMagstd: standard deviation of the magnitude of angular velocity of the body, in the frequency domain
fBodyGyroMagmeanFreq: mean frequency of the magnitude of angular velocity of the body, in the frequency domain
fBodyGyroJerkMagmean: mean magnitude of jerk angular velocity of the body, in the frequency domain
fBodyGyroJerkMagstd: standard deviation of jerk angular velocity of the body, in the frequency domain
fBodyGyroJerkMagmeanFreq: mean frequency of  the magnitude of jerk angular velocity of the body, in the frequency domain
angletBodyAccMeangravity: mean acceleration of the body due to gravity in a signal window sample
angletBodyAccJerkMeangravityMean: mean jerk acceleration of the body due to gravity in a signal window sample
angletBodyGyroMeangravityMean: mean angular velocity of the body due to gravity in a signal window sample
angletBodyGyroJerkMeangravityMean: mean jerk angular velocity of the body due to gravity in a signal window sample
angleXgravityMean: mean gravity in the X direction in a signal window sample
angleYgravityMean: mean gravity in the Y direction in a signal window sample
angleZgravityMean: mean gravity in the Z direction in a signal window sample
