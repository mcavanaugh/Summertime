#!/bin/sh

hdir="/home/mike/history"

for i in `ls $hdir`
do
  echo i = $i
  sym=${i%.*}
  echo sym = ${i%.*}

  rails runner addprice.rb  ${sym} ${hdir}/$i
done
