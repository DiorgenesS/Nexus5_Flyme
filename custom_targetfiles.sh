#/bin/bash

PWD=`pwd`
TARGET_DIR=out/merged_target_files
GAPPS=$PWD/gapps

#Added Gapps to ROM
if [ -e $GAPPS/SYSTEM ]
then
   echo ">>> Adding Gapps to ROM"
   cp -rf $GAPPS/SYSTEM $TARGET_DIR
   echo ">>> Gapps added"
fi
