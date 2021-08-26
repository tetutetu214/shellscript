#!/bin/bash

# readを利用したキーボード入力
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

# if文の利用
# echo "次にif文を学習します。まずhogeと打ち込んでみてください"
# read str
# echo "sleepを入れているので3秒お待ちください"; sleep 3
# echo
# if [ "$str" = "hoge" ]; then
#   echo "hoge,素晴らしい"
# elif [ "$str" = "huga" ]; then
#   echo "huga,エクセレント"
# else
#   echo "話を聞いていましたか？"
# fi
# echo
# echo "今度はfugaと打ち込んでみてください"
# read str
# echo
# if [ "$str" = "hoge" ]; then
#   echo "hoge,素晴らしい"
# elif [ "$str" = "fuga" ]; then
#   echo "fuga,エクセレント"
# else
#   echo "話を聞いていましたか？"
# fi

# case文の利用
echo "次はcase文を利用します、結果は同じに見えますが処理が異なります。さっそくhogeと打ち込んでください"
read str
echo "今回も3秒お待ちください";sleep 3
case "$str" in
  "hoge" ) echo "ないすhoge";;
  "fuga" ) echo "えくせれんとfuga";;
  * ) echo "話を聞いていましたか？";;
esac
