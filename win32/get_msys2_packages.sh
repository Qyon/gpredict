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
  wget -nv $i -O tmp.tar.zst
  if [ "x$?" == "x0" ];
  then
    echo "Unpacking..."
    tar -xf tmp.tar.zst
    rm tmp.tar.zst
  else
    echo "Error while downloading file!"
    exit 1
  fi
done  