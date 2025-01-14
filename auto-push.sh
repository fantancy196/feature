#!/bin/bash

# 检查是否有未提交的更改
if [[ -n $(git status -s) ]]; then
  # 如果有未提交的更改，执行提交和推送
  echo "检测到未提交的更改，正在提交并推送..."
  git add .
  git commit -m "自动提交"
  git push origin master
else
  # 如果没有未提交的更改，输出提示
  echo "没有未提交的更改。"
fi