#!/bin/bash

echo "readを利用したキーボード入力をしていきましょう"
echo "名前を入力してください"
read NAME
echo
echo "Hello $NAME World! それでは$NAMEさん学習をしていきましょう"
echo 
echo "さっそくですが、ls -lと打刻してください"
read opt
$opt
echo
echo "ディレクトリ（ファイル）に格納されているファイルが表示されましたか？"
echo "このようにreadを利用すると変数に格納することができます。"
echo
echo "次にif文を学習します。まずhogeと打ち込んでみてください"
read str
echo "3秒お待ちください"; sleep 3
echo
if [ "$str" = "hoge" ]; then
  echo "hoge,素晴らしい"
elif [ "$str" = "huga" ]; then
  echo "huga,エクセレント"
else
  echo "話を聞いていましたか？"
fi
echo
echo "今度はfugaと打ち込んでみてください"
read str
echo
if [ "$str" = "hoge" ]; then
  echo "hoge,素晴らしい"
elif [ "$str" = "fuga" ]; then
  echo "fuga,エクセレント"
else
  echo "話を聞いていましたか？"
fi
echo "そういえばif文は[]を利用しています"
echo
echo "次はcase文を利用します、結果は同じに見えますが処理が異なります。さっそくhogeと打ち込んでください"
read str
echo "今回も3秒お待ちください";sleep 3
case "$str" in
  "hoge" ) echo "ないすhoge";;
  "fuga" ) echo "えくせれんとfuga";;
  * ) echo "話を聞いていましたか？";;
esac
sleep 3
echo "for文を利用してループ処理を学んでいきましょう"
sleep 1
for i in 0 1 2
do 
  echo $i
done
echo "突然0・1・2が出てきて驚きましたが、次はwhile文を利用します。if文のように[]を利用することができます。"
sleep 1
echo "endが押されるまで無限ループするように設定しました。"
while :
do
  read str

  if [ "$str" = "end" ]; then
    break
  fi
done
echo "endで止めることができたでしょうか"; sleep 1
echo "最後にhogefileの中に文字列 hoge があるかを探してみるために、さっそくhogefileを作成していきます"; sleep 1
echo "hoge" >> hogefile.txt; sleep 1
echo "hogeと書かれたhogefile.txtが完成しました"; sleep 1
echo "ディレクトリを確認します"; sleep 1;ls -la
echo "hogefileが作成されているのが確認できたでしょうか"; sleep 3
echo "中身も確認していきましょう↓↓↓"; sleep 2
cat hogefile.txt
echo "↑↑↑さて中身も確認できたので早速検索していきます"; sleep 2
echo "grepを利用して、ファイルの中に”hoge”は果たしてあるのでしょうか？"
echo "検索中です"; sleep 3
if grep 'hoge' hogefile.txt; then
  echo "hoge found.見つかったよやったね！"
fi
echo "最後に終了ステータスをしていきます。お疲れ様でした。"; sleep 2
echo "終了です"; $?