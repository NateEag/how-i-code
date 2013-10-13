#! /bin/bash

# post-receive script to publish changes after git push. By using this instead
# of the rsync+ssh publication from Pelican's Makefile, I keep my username out
# of the repo.

# I suppose it does give away a bit of the layout for this particular hosting
# server, but that's not nearly as bad as having a username documented.

BASE_DIR=~/domains/howicode.nateeag.com/web
WORK_TREE=$BASE_DIR/staging
PROD_DIR=$BASE_DIR/public

GIT_WORK_TREE=$WORK_TREE git checkout -f master

cd $WORK_TREE
if [ ! -d $WORK_TREE/pythonenv ]; then
    $WORK_TREE/make-virtualenv.sh
fi

source $WORK_TREE/pythonenv/bin/activate

# Because my hosting doesn't have make.
gmake html

rsync -r --delete $WORK_TREE/output/ $PROD_DIR
