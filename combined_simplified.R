## =============================================================================
## Combined Simplified
##
## This file assumes there is a data.frame called "combined". If / when there is
## not a data.frame called "combined", R will stop itself with an error.
## Compared to the last file, this one is short and simple. I am using sqldf,
## because I am, at heart, a database guy.
##
## 1. Create the combined_all data.frame. All required data will be added as a
##    column to test and train.
## =============================================================================

## Initialize ------------------------------------------------------------------
## Once a database guy, always a database guy. I find SQL queries make more
## sense to me than using more traditional R-Language approaches for data
## reshaping.
library("sqldf")

## QA --------------------------------------------------------------------------
if( !exists("combined") ) {stop("The data.frame 'combined' is missing.")}
if( exists("combined_simplified") ) {rm( list = "combined_simplified" )}

## Combined Simplified ---------------------------------------------------------
##
## The following two commands create combined_simplified.
## This is the simplified version of combined. It is tidy because each row
## contains exactly one subject. No more, no less.
## The column names are nearly identical to the combined data.frame, but now
# the names are prepended by the activity.
##
## Example:
## In the combined data set, we have a column called x_avg. For each subject,
## there are up to six rows, one for each activity. In combined_simplified,
## we have one row per subject, but the x_avg column is now 6 columns.
## + walking_x_avg
## + walking_upstairs_x_avg
## + walking_downstairs_x_avg
## + sitting_x_avg
## + standing_x_avg
## + laying_x_avg

qry <- paste(
     "SELECT subject, stat_group"
    ## X Mean-------------------------------------------------------------------
    ,"  ,max(case when activity = 'walking' then x_avg else null end) walking_x_avg"
    ,"  ,max(case when activity = 'walking_upstairs' then x_avg else null end) walking_upstairs_x_avg"
    ,"  ,max(case when activity = 'walking_downstairs' then x_avg else null end) walking_downstairs_x_avg"
    ,"  ,max(case when activity = 'sitting' then x_avg else null end) sitting_x_avg"
    ,"  ,max(case when activity = 'standing' then x_avg else null end) standing_x_avg"
    ,"  ,max(case when activity = 'laying' then x_avg else null end) laying_x_avg"
    ## Body Acc X --------------------------------------------------------------
    ,"  ,max(case when activity = 'walking' then body_acc_x_avg else null end) walking_body_acc_x_avg"
    ,"  ,max(case when activity = 'walking_upstairs' then body_acc_x_avg else null end) walking_upstairs_body_acc_x_avg"
    ,"  ,max(case when activity = 'walking_downstairs' then body_acc_x_avg else null end) walking_downstairs_body_acc_x_avg"
    ,"  ,max(case when activity = 'sitting' then body_acc_x_avg else null end) sitting_body_acc_x_avg"
    ,"  ,max(case when activity = 'standing' then body_acc_x_avg else null end) standing_body_acc_x_avg"
    ,"  ,max(case when activity = 'standing## + walking_x_avg' then body_acc_x_avg else null end) standing_body_acc_x_avg"
    ## Body Acc Y --------------------------------------------------------------
    ,"  ,max(case when activity = 'walking' then body_acc_y_avg else null end) walking_body_acc_y_avg"
    ,"  ,max(case when activity = 'walking_upstairs' then body_acc_y_avg else null end) walking_upstairs_body_acc_y_avg"
    ,"  ,max(case when activity = 'walking_downstairs' then body_acc_y_avg else null end) walking_downstairs_body_acc_y_avg"
    ,"  ,max(case when activity = 'sitting' then body_acc_y_avg else null end) sitting_body_acc_y_avg"
    ,"  ,max(case when activity = 'standing' then body_acc_y_avg else null end) standing_body_acc_y_avg"
    ,"  ,max(case when activity = 'laying' then body_acc_y_avg else null end) laying_body_acc_y_avg"    
    ## Body Acc Z --------------------------------------------------------------
    ,"  ,max(case when activity = 'walking' then body_acc_z_avg else null end) walking_body_acc_z_avg"
    ,"  ,max(case when activity = 'walking_upstairs' then body_acc_z_avg else null end) walking_upstairs_body_acc_z_avg"
    ,"  ,max(case when activity = 'walking_downstairs' then body_acc_z_avg else null end) walking_downstairs_body_acc_z_avg"
    ,"  ,max(case when activity = 'sitting' then body_acc_z_avg else null end) sitting_body_acc_z_avg"
    ,"  ,max(case when activity = 'standing' then body_acc_z_avg else null end) standing_body_acc_z_avg"
    ,"  ,max(case when activity = 'laying' then body_acc_z_avg else null end) laying_body_acc_z_avg"
    ## Body Gyro X --------------------------------------------------------------
    ,"  ,max(case when activity = 'walking' then body_gyro_x_avg else null end) walking_body_gyro_x_avg"
    ,"  ,max(case when activity = 'walking_upstairs' then body_gyro_x_avg else null end) walking_upstairs_body_gyro_x_avg"
    ,"  ,max(case when activity = 'walking_downstairs' then body_gyro_x_avg else null end) walking_downstairs_body_gyro_x_avg"
    ,"  ,max(case when activity = 'sitting' then body_gyro_x_avg else null end) sitting_body_gyro_x_avg"
    ,"  ,max(case when activity = 'standing' then body_gyro_x_avg else null end) standing_body_gyro_x_avg"
    ,"  ,max(case when activity = 'laying' then body_gyro_x_avg else null end) laying_body_gyro_x_avg"
    ## Body Gyro Y --------------------------------------------------------------
    ,"  ,max(case when activity = 'walking' then body_gyro_y_avg else null end) walking_body_gyro_y_avg"
    ,"  ,max(case when activity = 'walking_upstairs' then body_gyro_y_avg else null end) walking_upstairs_body_gyro_y_avg"
    ,"  ,max(case when activity = 'walking_downstairs' then body_gyro_y_avg else null end) walking_downstairs_body_gyro_y_avg"
    ,"  ,max(case when activity = 'sitting' then body_gyro_y_avg else null end) sitting_body_gyro_y_avg"
    ,"  ,max(case when activity = 'standing' then body_gyro_y_avg else null end) standing_body_gyro_y_avg"
    ,"  ,max(case when activity = 'laying' then body_gyro_y_avg else null end) laying_body_gyro_y_avg"    
    ## Body Gyro Z --------------------------------------------------------------
    ,"  ,max(case when activity = 'walking' then body_gyro_z_avg else null end) walking_body_gyro_z_avg"
    ,"  ,max(case when activity = 'walking_upstairs' then body_gyro_z_avg else null end) walking_upstairs_body_gyro_z_avg"
    ,"  ,max(case when activity = 'walking_downstairs' then body_gyro_z_avg else null end) walking_downstairs_body_gyro_z_avg"
    ,"  ,max(case when activity = 'sitting' then body_gyro_z_avg else null end) sitting_body_gyro_z_avg"
    ,"  ,max(case when activity = 'standing' then body_gyro_z_avg else null end) standing_body_gyro_z_avg"
    ,"  ,max(case when activity = 'laying' then body_gyro_z_avg else null end) laying_body_gyro_z_avg"   
    ,"FROM combined"
    ,"GROUP BY subject, stat_group"
    ,sep = " "
    )
combined_simplified <- sqldf(qry)




