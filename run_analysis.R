
# This script assumes that you have unzipped the UCI HAR dataset
# and set this to be your working directory. You must also have
# installed the dplyr package.

library(dplyr)

# Load in the training data:
training <- read.table("train/X_train.txt")

# Add columns for subject and activity:
activities_tr <- read.table("train/y_train.txt")
subjects_tr <- read.table("train/subject_train.txt")

# Add a new column indicating that this is training data:
training <- mutate(training,exptype="training")

training <- cbind(activities_tr,training)
training <- cbind(subjects_tr,training)

# Now we will read in the names of the features:
features <- read.table("features.txt",stringsAsFactors=FALSE)

# Since these are going to be column names in our dataset, we will
# first edit them so as to get rid of extraneous characters and typos:
featurenames <- features$V2
featurenames <- gsub('-','',featurenames)
featurenames <- gsub('\\(','',featurenames)
featurenames <- gsub(')','',featurenames)
featurenames <- gsub(',','',featurenames)
featurenames <- gsub('BodyBody','Body',featurenames)

# Set the column names:
colnames(training) <- c("Subject","Activity",featurenames,"exptype")


# Load in the test data:
test <- read.table("test/X_test.txt")

# Add columns for subject and activity:
activities_te <- read.table("test/y_test.txt")
subjects_te <- read.table("test/subject_test.txt")

# Add a new column indicating that this is testing data:
test <- mutate(test,exptype="testing")

test <- cbind(activities_te,test)
test <- cbind(subjects_te,test)

colnames(test) <- c("Subject","Activity",featurenames,"exptype")

# Next we will combine the test and training datasets:
alldata <- rbind(training,test)


# Extract just the measurements that involve a mean or standard deviation,
# and add the subject and activity columns back on

meandata <- alldata[grepl("[Mm]ean|std",colnames(alldata))]
meandata <- cbind(alldata$Subject,alldata$Activity,meandata)
colnames(meandata)[1] <- "Subject"
colnames(meandata)[2] <- "Activity"

# Name the activities in the activity column - first, read the labels
act_labels <- read.table("activity_labels.txt",stringsAsFactors=FALSE)

meandata <- mutate(meandata,Activity=act_labels$V2[Activity])

# Finally, create a new, tidy dataset with the average of each variable
# for each activity and each subject

meandata_groups <- group_by(meandata,Subject,Activity) 

meandata_groups <- summarise_each(meandata_groups,funs(mean))

# Write out this last data set
write.table(meandata_groups,file="meandata_groups.txt")
