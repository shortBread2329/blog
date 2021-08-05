#!/bin/bash
hugo --cleanDestinationDir
hugo
# 入力を受け取る↲
echo "コミットメッセージを入力してください"
read msg
if [ -z "$msg" ]; then
    msg="Add:本日分記事"
fi
git add * 
git commit -m "$msg"
git push