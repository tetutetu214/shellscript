#!/bin/bash

echo "Hello,World!"
echo "ディレクトリを作成します"; sleep 2
if  [ -d ./lesson_bash ]; then
  echo "既に存在しています"
else
  mkdir lesson_bash
fi

echo "ls -l と打ち込んでください。lesson_bashというディレクトリが表示されていることを確認してください"
read opt
$opt
