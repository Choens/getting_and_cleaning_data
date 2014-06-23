## This is a selection of R syntax I used to look around at the data.


## Ratio of time to import. I'm just curious.
import.time.ratio <- test.time[3] / (test.time[3] + train.time[3])

## TypeOf ----------------------------------------------------------------------
for(i in seq_along(test.files) ){
    print( paste(as.name(test.files[i])
                 ,"-"
                 ,typeof(eval(as.name(test.files[i])))
                 ,sep=" "
                 ))}
for(i in seq_along(train.files.full) ){
    print( paste(as.name(test.files[i])
                 ,"-"
                 ,typeof(eval(as.name(test.files[i])))
                 ,sep=" "
                 ))    }


## IS Data.Frame ---------------------------------------------------------------
for(i in seq_along(test.files) ){
    print( paste(as.name(test.files[i])
                 ,"-"
                 ,is.data.frame(eval(as.name(test.files[i])))
                 ,sep=" "
                 ))}
for(i in seq_along(train.files.full) ){
    print( paste(as.name(train.files[i])
                 ,"-"
                 ,is.data.frame(eval(as.name(train.files[i])))
                 ,sep=" "
                 ))    }

## Since everyone is a data.frame . . . . 

## Dimensions -------------------------------------------------------------------
for(i in seq_along(test.files) ){
    print( paste(as.name(test.files[i])
                 ,"-"
                 ,dim(eval(as.name(test.files[i])))
                 ,sep=" "
                 ))}
for(i in seq_along(train.files.full) ){
    print( paste(as.name(train.files[i])
                 ,"-"
                 ,dim(eval(as.name(train.files[i])))
                 ,sep=" "
                 ))    }

