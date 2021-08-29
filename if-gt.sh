#!/bin/bash

echo "0~9の数字を入力してください"
read NUM

if [ $NUM -ge 5 ]; then
  echo "入力した値は5以上です"
elif [ $NUM -lt 4 ]; then
  echo "4未満です"
else
  echo "指示にしたがっていません" 
fi
