#!bin/bash

# echo "hogeと入力してください"
# read NAME
# #文字列の場合は＝で、値の場合は-eqを利用する
# if [ $NAME = "hoge" ]; then
#   echo "$NAME"
# else
#   echo "hoge以外を打ち込みましたね"
# fi
# sleep 3
# echo "バージョンを確認するためのオプションを打ち込んでください[bash --□□□]"
# read NAME
# #文字列の場合は＝で、値の場合は-eqを利用する
# if [ $NAME = "version" ]; then
#   bash --$NAME
# else
#   echo "正解は bash --versionです"
# fi

echo "次にbash」のプログラムファイルが何処にあるのか確認してみよう[□□□ bash]"
read NAME
if [ "$NANE" = "which" ]; then
  $NAME bash
else
  echo "whichだよ"
fi
