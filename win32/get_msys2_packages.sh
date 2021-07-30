#!/bin/bash

BASE_DIR="`pwd`"
cd /opt/mingw32/

for i in `cat $BASE_DIR/msys2packages.txt`;
do 
  echo $i
  if [ "$i" == "#" ];
  then
    exit
   fi
  wget $i -O tmp.tar.zst
  tar -I zstd -xf tmp.tar.zst
  rm tmp.tar.zst
done  