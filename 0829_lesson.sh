#!/bin/bash
echo "「bash」シェルのバージョンを確認してみよう"
read COM
$COM
echo "「bash」のプログラムファイルが何処にあるのかコマンドで確認してみよう。"
read COM
$COM
echo "「hello_world」と表示してみよう。"
read COM
$COM
echo "表示した文字列を「testfile.txt」にリダイレクトしてみよう。"
read COM
cat testfile.txt
echo "パイプで「ls」コマンドの結果を「sort」コマンドへ繋ごう。"
read COM
$COM
echo "「sh」ファイルを作成して「chmod」で実行権限を与えてみよう。"
read
# 「sh」の一行目にスクリプトとして必要な文字列を記述しよう。
# 「sh」シェルスクリプトに「#」でコメントを記述してみよう。
# 「bash」シェルスクリプト「sh」で「echo」を利用して「hello_world」と表示してみよう。
# 「var-hello_world.sh」というファイルを作成して、スクリプト内で変数「STR=hello_world」と代入、それを「echo」で表示させてみよう。
# 「if」文を使用して条件分岐してみよう。「if-gt.sh」を作成し「$NUM」の値が0より大きければ「True」と表示させてみよう。
# 「for-list.sh」というファイルを作成し、「for」文を使用して文字列「one two three」をリスト表示してみよう。
# 「while-line.sh」というファイルを作成し「while」文と「read」文を組み合わせて「/etc/fstab」の中身を一行づつ表示してみよう。
# 「test-func.sh」というファイルを作成し、「hello_world」と表示する「myfunc」という関数を作成して実際に「myfunc」を呼出してみよう。