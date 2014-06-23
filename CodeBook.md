# Code Book

## Opening Comments

The syntax in this repo produces two data.frames.

    + combined and
    + combined_simplified

The files used to produce them mirror the object's name. I will
describe each data set below. Each description will include the
dimensions of the object, the column names of the object and where the
data in each column comes from.

## Combined

The file, combined.R, produces the data.frame called combined. This is
the output I created to satisfy steps 1 - 4.

Why is it tidy? It is tidy because it has a unique per row combination
of subject, stat_group and activity. Each subject / activity has, at
most, a single row. No more. Each column measures the output from the
phone for the measure represented by the column name.

_Object Dimensions_

   + 10299 rows.
   + 23 columns.

_Column Names - Source - Description_

- subject - Subject Identifier - Comes from subject\_test and subject\_train
- stat\_group - Either test or train, depending on which data set they came from.
- activity - Subject's Activity - Comes from y\_test and y\_train
- x\_avg - Average X - Comes from X\_test and X\_train
- x\_std\_dev - Standard Deviation of X - Comes from X\_test and X\_train
- body\_acc\_x\_avg - Average Body Acc X - Comes from body\_acc\_x\_test
and body\_acc\_x\_train
- body\_acc\_x\_std\_dev - Standard Deviation of Body Acc X - Comes from body\_acc\_x\_test
and body\_acc\_x\_train
- body\_acc\_y\_avg - Average Body Acc Y - Comes from body\_acc\_y\_test
and body\_acc\_y\_train
- body\_acc\_y\_std\_dev- Standard Deviation of Body Acc Y - Comes from body\_acc\_y\_test
and body\_acc\_y\_train
- body\_acc\_z\_avg - Standard Deviation of Body Acc Z - Comes from body\_acc\_z\_test
and body\_acc\_z\_train
- body\_acc\_z\_std\_dev - Standard Deviation of Body Acc Z - Comes from body\_acc\_z\_test
and body\_acc\_z\_train
- body\_gyro\_x\_avg - Average Body Gyro X - Comes from body\_gyro\_x\_test
and body\_gyro\_x\_train
- body\_gyro\_x\_std\_dev - Standard Deviation of Body Gyro X - Comes from body\_gyro\_x\_test
and body\_gyro\_x\_train
- body\_gyro\_y\_avg - Average Body Gyro Y - Comes from body\_gyro\_y\_test
and body\_gyro\_y\_train
- body\_gyro\_y\_std\_dev- Standard Deviation of Body Gyro Y - Comes from body\_gyro\_y\_test
and body\_gyro\_y\_train
- body\_gyro\_z\_avg - Standard Deviation of Body Gyro Z - Comes from body\_gyro\_z\_test
and body\_gyro\_z\_train
- body\_gyro\_z\_std\_dev - Standard Deviation of Body Gyro Z - Comes from body\_gyro\_z\_test
and body\_gyro\_z\_train
- total\_acc\_x\_avg - Average Total Acc X - Comes from total\_acc\_x\_test
and total\_acc\_x\_train
- total\_acc\_x\_std\_dev - Standard Deviation of Total Acc X - Comes from total\_acc\_x\_test
and total\_acc\_x\_train
- total\_acc\_y\_avg - Average Total Acc Y - Comes from total\_acc\_y\_test
and total\_acc\_y\_train
- total\_acc\_y\_std\_dev- Standard Deviation of Total Acc Y - Comes from total\_acc\_y\_test
and total\_acc\_y\_train
- total\_acc\_z\_avg - Standard Deviation of Total Acc Z - Comes from total\_acc\_z\_test
and total\_acc\_z\_train
- total\_acc\_z\_std\_dev - Standard Deviation of Total Acc Z - Comes from total\_acc\_z\_test
and total\_acc\_z\_train

## Combined Simplified

The file, combined_simplified.R, produces the data.frame called
combined_simplified. This is the output I created to satisfy step 5.


Why is it tidy? It is tidy because it each subject has at most one
row. The columns each measure a data componenet (x, gyro x, etc.) but
each row in the data set represents a single person.

_Object Dimensions_

   + 30 rows.
   + 44 columns.

_Column Names_

The column names for the simplified data.frame parallel the combined
data.frame. The big difference is that combined is measuing activities
per subject. combined_simplified measures people.

- subject
- stat\_group
- walking\_x\_avg
- walking\_upstairs\_x\_avg
- walking\_downstairs\_x\_avg
- sitting\_x\_avg
- standing\_x\_avg
- laying\_x\_avg
- walking\_body\_acc\_x\_avg
- walking\_upstairs\_body\_acc\_x\_avg
- walking\_downstairs\_body\_acc\_x\_avg
- sitting\_body\_acc\_x\_avg
- standing\_body\_acc\_x\_avg
- standing\_body\_acc\_x\_avg
- walking\_body\_acc\_y\_avg
- walking\_upstairs\_body\_acc\_y\_avg
- walking\_downstairs\_body\_acc\_y\_avg
- sitting\_body\_acc\_y\_avg
- standing\_body\_acc\_y\_avg
- laying\_body\_acc\_y\_avg
- walking\_body\_acc\_z\_avg
- walking\_upstairs\_body\_acc\_z\_avg
- walking\_downstairs\_body\_acc\_z\_avg
- sitting\_body\_acc\_z\_avg
- standing\_body\_acc\_z\_avg
- laying\_body\_acc\_z\_avg
- walking\_body\_gyro\_x\_avg
- walking\_upstairs\_body\_gyro\_x\_avg
- walking\_downstairs\_body\_gyro\_x\_avg
- sitting\_body\_gyro\_x\_avg
- standing\_body\_gyro\_x\_avg
- laying\_body\_gyro\_x\_avg
- walking\_body\_gyro\_y\_avg
- walking\_upstairs\_body\_gyro\_y\_avg
- walking\_downstairs\_body\_gyro\_y\_avg
- sitting\_body\_gyro\_y\_avg
- standing\_body\_gyro\_y\_avg
- laying\_body\_gyro\_y\_avg
- walking\_body\_gyro\_z\_avg
- walking\_upstairs\_body\_gyro\_z\_avg
- walking\_downstairs\_body\_gyro\_z\_avg
- sitting\_body\_gyro\_z\_avg
- standing\_body\_gyro\_z\_avg
- laying\_body\_gyro\_z\_avg            
