## =============================================================================
## Master Data Set
##
## The data.frames "test" and "train" will be our "master" data sets.
## 1. Create our new "Master" data.frames. All required data will be added as a
##    column to test and train.
## 2. Names the first column of each master data.frame, "subject".
## 3. Creates a column adjacent to subject that tells us if the subject is in
##    the test or train data set. This is not really relevant or useful until
##    we get to the part where we combine the two data sets, but I wanted this
##    to be on the left side of the resulting data.frame.
## =============================================================================

if( exists("all") ) {rm( list = "all" )}
if( exists("test") ) {rm( list = "test" )}
if( exists("train") ) {rm( list = "train" )}

test  <- subject_test
train <- subject_train

names(test)  <-  "subject"
names(train) <-  "subject"

test$stat_group  <- "test"
train$stat_group <- "train"

## -----------------------------------------------------------------------------
## Activities
##
## For each row, what is the test subject doing?
## 1. Creates the "activity" column in both master data sets.
## 2. Imports the activity labels, which I apparently did not do earlier.
## 3. Applies the labels to the activity columns.
## -----------------------------------------------------------------------------

test$activity  <- as.factor(y_test$V1)
train$activity <- as.factor(y_train$V1)

activity_labels <- read.table(file="data/activity_labels.txt")

levels(test$activity)  <- tolower(activity_labels$V2)
levels(train$activity) <- tolower(activity_labels$V2)



## =============================================================================
## X Data
##
## Creates the Relevant body_acc columns for the x, y and z components.
## =============================================================================

## -----------------------------------------------------------------------------
## x_avg, x_std_dev
##
## 1. Creates 2 columns in both test and train.
##    A. The first column is the per row mean (x_mean).
##    B. The second column is the per row standard deviation (x_st_dev).
## -----------------------------------------------------------------------------
test$x_avg  <- apply(X_test,  1, mean)
train$x_avg <- apply(X_train, 1, mean)

test$x_std_dev  <- apply(X_test,  1, sd)
train$x_std_dev <- apply(X_train, 1, sd)



## =============================================================================
## Body Acc
##
## Creates the Relevant body_acc columns for the x, y and z components.
## =============================================================================

## -----------------------------------------------------------------------------
## Body Acc X
##
## 1. Creates the body_acc_x_avg (mean) and body_acc_x_std_dev (standard
##    deviation) coumns in test and train.
## -----------------------------------------------------------------------------
test$body_acc_x_avg  <- apply(body_acc_x_test,   1, mean)
train$body_acc_x_avg <- apply(body_acc_x_train,  1, mean)

test$body_acc_x_std_dev  <- apply(body_acc_x_test,   1, sd)
train$body_acc_x_std_dev <- apply(body_acc_x_train,  1, sd)

## -----------------------------------------------------------------------------
## Body Acc Y
##
## 1. Creates the body_acc_y_avg (mean) and body_acc_y_std_dev (standard
##    deviation) coumns in test and train.
## -----------------------------------------------------------------------------
test$body_acc_y_avg  <- apply(body_acc_y_test,   1, mean)
train$body_acc_y_avg <- apply(body_acc_y_train,  1, mean)

test$body_acc_y_std_dev  <- apply(body_acc_y_test,   1, sd)
train$body_acc_y_std_dev <- apply(body_acc_y_train,  1, sd)

## -----------------------------------------------------------------------------
## Body Acc Z
##
## 1. Creates the bodz_acc_z_avg (mean) and bodz_acc_z_std_dev (standard
##    deviation) coumns in test and train.
## -----------------------------------------------------------------------------
test$body_acc_z_avg  <- apply(body_acc_z_test,   1, mean)
train$body_acc_z_avg <- apply(body_acc_z_train,  1, mean)

test$body_acc_z_std_dev  <- apply(body_acc_z_test,   1, sd)
train$body_acc_z_std_dev <- apply(body_acc_z_train,  1, sd)



## =============================================================================
## Gyro Acc
##
## Creates the relevant body_gyro columns for the x, y and z components.
## =============================================================================

## -----------------------------------------------------------------------------
## Gyro Acc X
##
## 1. Creates the body_gyro_x_avg (mean) and body_gyro_x_std_dev (standard
##    deviation) coumns in test and train.
## -----------------------------------------------------------------------------
test$body_gyro_x_avg  <- apply(body_gyro_x_test,   1, mean)
train$body_gyro_x_avg <- apply(body_gyro_x_train,  1, mean)

test$body_gyro_x_std_dev  <- apply(body_gyro_x_test,   1, sd)
train$body_gyro_x_std_dev <- apply(body_gyro_x_train,  1, sd)

## -----------------------------------------------------------------------------
## Gyro Acc Y
##
## 1. Creates the body_gyro_y_avg (mean) and body_gyro_y_std_dev (standard
##    deviation) coumns in test and train.
## -----------------------------------------------------------------------------
test$body_gyro_y_avg  <- apply(body_gyro_y_test,   1, mean)
train$body_gyro_y_avg <- apply(body_gyro_y_train,  1, mean)

test$body_gyro_y_std_dev  <- apply(body_gyro_y_test,   1, sd)
train$body_gyro_y_std_dev <- apply(body_gyro_y_train,  1, sd)

## -----------------------------------------------------------------------------
## Gyro Acc Z
##
## 1. Creates the bodz_acc_z_avg (mean) and bodz_acc_z_std_dev (standard
##    deviation) coumns in test and train.
## -----------------------------------------------------------------------------
test$body_gyro_z_avg  <- apply(body_gyro_z_test,   1, mean)
train$body_gyro_z_avg <- apply(body_gyro_z_train,  1, mean)

test$body_gyro_z_std_dev  <- apply(body_gyro_z_test,   1, sd)
train$body_gyro_z_std_dev <- apply(body_gyro_z_train,  1, sd)



## =============================================================================
## Total Acc
##
## Creates the relevant total_acc columns for the x, y and z components.
## =============================================================================

## -----------------------------------------------------------------------------
## Total Acc X
##
## 1. Creates the total_acc_x_avg (mean) and total_acc_x_std_dev (standard
##    deviation) coumns in test and train.
## -----------------------------------------------------------------------------
test$total_acc_x_avg  <- apply(total_acc_x_test,   1, mean)
train$total_acc_x_avg <- apply(total_acc_x_train,  1, mean)

test$total_acc_x_std_dev  <- apply(total_acc_x_test,   1, sd)
train$total_acc_x_std_dev <- apply(total_acc_x_train,  1, sd)

## -----------------------------------------------------------------------------
## Total Acc Y
##
## 1. Creates the total_acc_y_avg (mean) and total_acc_y_std_dev (standard
##    deviation) coumns in test and train.
## -----------------------------------------------------------------------------
test$total_acc_y_avg  <- apply(total_acc_y_test,   1, mean)
train$total_acc_y_avg <- apply(total_acc_y_train,  1, mean)

test$total_acc_y_std_dev  <- apply(total_acc_y_test,   1, sd)
train$total_acc_y_std_dev <- apply(total_acc_y_train,  1, sd)

## -----------------------------------------------------------------------------
## Total Acc Z
##
## 1. Creates the total_acc_z_avg (mean) and total_acc_z_std_dev (standard
##    deviation) coumns in test and train.
## -----------------------------------------------------------------------------
test$total_acc_z_avg  <- apply(total_acc_z_test,   1, mean)
train$total_acc_z_avg <- apply(total_acc_z_train,  1, mean)

test$total_acc_z_std_dev  <- apply(total_acc_z_test,   1, sd)
train$total_acc_z_std_dev <- apply(total_acc_z_train,  1, sd)



## =============================================================================
## All
##
## Creates the tidy data set, all.
## 1. Combines test and train to create all.
## =============================================================================

combined <- rbind(test, train)


## =============================================================================
## QA
## =============================================================================

dim(combined)
head(combined)
table(combined$subject)
