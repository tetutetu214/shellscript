#!/bin/bash

i=0
while [ $i -ne 10 ]
do
  echo "Hello!Akira!" >> sample.txt
  i=`expr 1 + $i`
done
