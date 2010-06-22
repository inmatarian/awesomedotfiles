#!/bin/sh

OLDDIR="`pwd`"

while ( (test ! -d ".git") && (test ! -d ".hg") && (test "`pwd`"!="/") )
do
  cd ..
done

echo "Generating tags in `pwd`"

find -iregex ".*\.\(c\|cpp\|h\|lua\|py\)" | ctags -R -L-

cd $OLDDIR

