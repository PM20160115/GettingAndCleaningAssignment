Data Source.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

File List
getdata-projectfiles-UCI HAR Dataset
  -- UCI HAR Dataset
     -- activity_labels.txt   This file have the list of activities
     -- features.txt  -- this file list of lables 
     -- features_info.txt - Description of teh labels
     -- README.txt - general information
     -- Test  - Test directary contains test data and corresponding subject data 
     -- Train - Train directary conatains Training data and corresponding subject data
     
     Process
       Load test and train data  and corresponding subject data
       Load meta data like Activity and features data
       Extract Mean and Standard devuiation columns for test and train data
       merge Test data with Activity and Subject information
       Merge Traindata with Activity and subject information
       merge both data set into one data set
