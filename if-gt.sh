#!/bin/bash

echo "0~9の数字を入力してください"
read NUM

if [ $NUM -qe 5 ]; then
  echo "入力した値は5以上です"
elif; then
  echo "4未満です"
else
  echo "指示にしたがっていません" 
fi
