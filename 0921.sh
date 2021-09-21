#!/bin/bash

ROOT_DIR=/Users/inamurateppei/projects/shellscript
#dirnameを利用した絶対パスでの表示の方法
SCRIPT_DIR=$(cd $(dirname $0) && pwd)

echo $ROOT_DIR 
# 実行した場所からのディレクトリの場所を表示（相対パス）
echo $0
# echo `dirname $0`
# echo `basename $0`

echo $SCRIPT_DIR
