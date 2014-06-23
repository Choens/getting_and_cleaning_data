################################################################################
## Run Analysis.R
##
##
################################################################################

## Reset Everything
rm(list=ls())

## =============================================================================
## Data Import
## =============================================================================

## -----------------------------------------------------------------------------
## Variables
## -----------------------------------------------------------------------------
## Creates 2 vectors, holding the names of the files
## The vectors test.file* hold the test files, and
## the vectors train.file* hold the trainig data.
test.files.full <- dir("data/test", full.names=TRUE)
train.files.full <- dir("data/train", full.names=TRUE)
test.files <- dir("data/test", full.names=FALSE)
train.files <- dir("data/train", full.names=FALSE)

test.files.full <- c(test.files.full, dir(test.files.full[1], full.names=TRUE) )
train.files.full <- c(train.files.full, dir(train.files.full[1], full.names=TRUE) )
test.files <- c(test.files, dir(test.files.full[1], full.names=FALSE) )
train.files <- c(train.files, dir(train.files.full[1], full.names=FALSE) )

## I created two sets so I could loop over the vector *.full, to import the data.
## The other vectors would let me name the variables.
test.files <- gsub(".txt", "", test.files)
train.files <- gsub(".txt", "", train.files)

## This just gets rid of the "Inertial Signals" folder. We don't need it.
test.files.full <- test.files.full[-1]
train.files.full <- train.files.full[-1]
test.files <- test.files[-1]
train.files <- train.files[-1]

## Quick QA test to make sure everything went according to plan.
## If anything looks weird, this will stop the script.
if(! length(test.files) == length(test.files.full) ) {
    stop("The files test.files and test.files.full have different lengths.")
}
if(! length(train.files) == length(train.files.full) ) {
    stop("The files train.files and train.files.full have different lengths.")
}

## -----------------------------------------------------------------------------
## Import Test Data
## -----------------------------------------------------------------------------
test.time <- system.time(
    for(i in seq_along(test.files.full) ){
        print("----------------------------------------")
        print( paste(i,"-",test.files[i],sep=" "))  ## This is just a status update.
        assign( test.files[i], read.table(file=test.files.full[i]) )
        print(" ")
    }
    )

## -----------------------------------------------------------------------------
## Import Training Data
## -----------------------------------------------------------------------------
train.time <- system.time(
    for(i in seq_along(train.files.full) ){
        print("----------------------------------------")
        print( paste(i,"-",train.files[i],sep=" "))  ## This is just a status update.
        assign( train.files[i], read.table(file=train.files.full[i]) )
        print(" ")
    }
    )



## =============================================================================
## Initial Exploration
## =============================================================================
## See the file initial_exploration.R for how I looked through this data.
## The script is not necessary for the actual project, so I stuck it off
## in a separate script, but it should be run at this point, not later.
source("initial_exploration.R")



## =============================================================================
## Combined
## =============================================================================
source("combined.R")



## =============================================================================
## Combined Simplified
## =============================================================================
source("combined_simplified.R")
