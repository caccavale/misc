#!/bin/bash
# Please think of a cleverer solution.
TMPDIR=`mktemp -d`
cd $TMPDIR
git clone "$1" &>/dev/null
cloc *
cd ..
rm -rf $TMPDIR
