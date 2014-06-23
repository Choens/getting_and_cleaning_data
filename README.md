## README

This is the README file for my "homework" submission for the Getting
and Cleaning Data class. Wheee. You are, undoubtedly, reading this
because you are grading my assignment. Thank you.

As per the instructions, I have created a file called
run_analysis.R. This is the "main" script in the folder. In theory,
you could just run this file and it would create the two "tidy" data
sets, combined and combined_simplified.

But, I have a stylistic aversion of files of endless code. I tend to
cut things up into multiple files, to make it easier for myself and
others to understand what is going on.

Thus, the file run_analysis.R imports the data, and then calls three
other R files (only two of which are actually necessary) to create the
tidy data sets required by this class.

This file will list, describe and explain the important files in the
repo. At the end of the file is a quick list of resources / citations.

## Data Import

The file, run_analysis.R, contains my code for importing the text
files into R. I create four vectors of names. The two vectors that
look like *.files.full is the full, relative path to all of the
text files I need to import. There are two such vectors, one for the
test data and one for the training data. Thus, I create the following
two vectors:

    + test.files.full,
    + train.files.full

I also create two parallel vectors, that include ONLY the names of the
text files. Using gsub(), I remove .txt from these secondary vectors,
which actually gives me a vector of names that I would like to name my
imported data sets. These two vectors are called:

    + test.files
    + train.files

Using these two vectors, I create two loops (one for the test data and
one for the training data) to import all of the data and name the
data.frames created by read.table.

To help the user track what is going on, both loops return to the
command-line a printed string telling the user where in the import
process you are. I did this because the import process takes longer
than 10 seconds, even with my SSD drive, and I have waiting for a loop
to finish unless I can see that is is still working correctly and not
hung-up.

And yes, I program in loops. I do sometimes use apply, but I program
in too many other programming languages and I like loops. Sorry.

All of the data used lives in the data folder. I unzipped the file I
downloaded from Coursera in this folder and if you like, you can read
the documentation that came with the data, in the data folder. I did
not edit this data It is exactly as I found it.

## Initial Exploration

After importing all of the text files into R, I wrote a script I call
initial_exploration.R. This file contains some code I wrote, using my
looped structure to look at and understand the structure of the
data. This was a useful step, because it heled me understand how the
data fit together, but it is not actually necessary to complete the
assignment. I included it because I wrote it and I used it and it is
part of my process, even if it is not actually part of the actual
assignment.

## Combined

The file, combined.R is the syntax needed to complete steps 1 - 4 of
the assignment. It produces a data.frame called combined. It is very
nice. I guess.

## Combined Simplified.

The file, combined_simplified.R is the syntax needed to complete step
5 of the assignment. It produces the second "tidy" data set, we upload
to Coursera. As you will see, I used the sqldf package, rather than
using the melt / reshape / whatever structure of R. Although I love
R's analytics capabilities, I have been programming databases for over
10 years and I prefer to write SQL, rather than use R's idiomatic
syntax.

I apologize if this makes grading my work more difficult.



