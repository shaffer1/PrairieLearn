#! /bin/bash

# the directory where the job stuff is
JOB_DIR='/grade/'
# the other directories
STUDENT_DIR=$JOB_DIR'student/'
SHARED_DIR=$JOB_DIR'shared/'
TEST_DIR=$JOB_DIR'tests/'

# where we will copy everything
MERGE_DIR=$JOB_DIR'run/'
# where we will put the actual student code- this depends on what the autograder expects, etc
BIN_DIR=$MERGE_DIR'bin/'

# now set up the stuff so that our run.sh can work
mkdir $MERGE_DIR
mkdir $BIN_DIR

cp $STUDENT_DIR* $BIN_DIR
cp $SHARED_DIR* $MERGE_DIR
cp $TEST_DIR* $MERGE_DIR

# create an ag user, if the dockerfile didn't already have one
# if it did, the command just prints the warning, which is fine
#useradd ag