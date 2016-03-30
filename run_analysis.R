
# Read data from files
actv_labels <- read.table("./activity_labels.txt")
features <- read.table("./features.txt")
subject_test <- read.table("./test/subject_test.txt")
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")

# logical value for column names contains mean and standard deviation .
MSDlogical_features <- grepl("mean|std", features[,2])

#change the coloumn name to logical name
names(x_test) <- features[,2]

x_test = x_test[ ,MSDlogical_features]

y_test$V1 <- actv_labels$V2[match(y_test$V1, actv_labels$V1)]
names(y_test) =  "Activity_Label"
names(subject_test) = "subject"


test_data <- cbind(as.data.table(subject_test), y_test, X_test)

# Load train data.
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

names(x_train) = features[,2]

x_train = x_train[,MSDlogical_features]

y_train$V1 <- actv_labels$V2[match(y_train$V1, actv_labels$V1)]
names(y_train) =  "Activity_Label"
names(subject_train) = "subject"

train_data <- cbind(as.data.table(subject_train), y_train, x_train)

# Merge test and train data
data = rbind(test_data, train_data)

