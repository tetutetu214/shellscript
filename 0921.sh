#!/bin/bash

ROOT_DIR=/Users/inamurateppei/projects/shellscript
#dirnameを利用した絶対パスでの表示の方法
SCRIPT_DIR=$(cd $(dirname $0) && pwd)

echo $ROOT_DIR 
# 実行した場所からのディレクトリの場所を表示（相対パス）
echo $0
echo $1

Start_Proc(){
  echo "開始プロセスです"
}

End_Proc(){
  echo "終了プロセスです"
	echo "引数1：$1 引数2：$2"
}

#関数の呼び出し
Start_Proc
End_Proc param1 param2

#ケース文で考えてみる
Start_End_Proc(){
  case ${int} in
  "0" ) echo "0なので開始プロセス"
  ;;
  "1" ) echo "1なので終了プロセス"
  ;;
	esac
}
echo -e "プロセスを開始・終了します\n開始の場合は”0”を、終了の場合は”1”を打ち込んでください"
read int
Start_End_Proc $int

if [ $# -eq 0 ]; then
  echo "入力した値は${#}です"
else
  echo "0以外の数値です"
fi

