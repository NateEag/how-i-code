#! /bin/bash

# post-receive script to publish changes after git push. By using this instead
# of the rsync+ssh publication from Pelican's Makefile, I keep my username out
# of the repo.

# I suppose it does give away a bit of the layout for this particular hosting
# server, but that's not nearly as bad as having a username documented.

SITE_DIR=/usr/local/nginx/sites/howicode.nateeag.com
mkdir -p "$SITE_DIR/builds"
mkdir -p "$SITE_DIR/releases"

WORK_TREE=$SITE_DIR/work_tree
PROD_DIR=$SITE_DIR/public

mkdir -p $WORK_TREE
GIT_WORK_TREE=$WORK_TREE git checkout -f master
short_hash=$(git rev-parse --short "master")

cd $WORK_TREE
if [ ! -d $WORK_TREE/pythonenv ]; then
    $WORK_TREE/make-virtualenv.sh
fi

. $WORK_TREE/pythonenv/bin/activate

make html
cp -r "$WORK_TREE/output/" "$SITE_DIR/builds/$short_hash"

ln -s "$SITE_DIR/builds/$short_hash/" "$SITE_DIR/releases/prod-tmp" && \
    mv -Tf "$SITE_DIR/releases/prod-tmp" "$SITE_DIR/releases/prod"
