#!/bin/bash

# echo "名前を入力してください"
# read NAME
# echo
# echo "Hello $NAME World!"
# echo 
# echo "それでは学習をスタートします。ls -lと打刻してください"
# read opt
# $opt
# echo
# echo "ディレクトリ（ファイル）に格納されているファイルが表示されましたか？"
# echo
echo "次にif文を学習します。まずhogeと打ち込んでみてください"
read str
if [ "$str" = "hoge" ]; then
  echo "hoge,素晴らしい"
elif [ "$str" = "huga" ]; then
  echo "huga,エクセレント"
else
  echo "話を聞いていましたか？"
fi