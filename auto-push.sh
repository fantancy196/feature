#!/bin/bash

# 获取当前分支
current_branch=$(git branch --show-current)
echo "当前分支: $current_branch"

# 检测是否有未提交的修改
if [[ -n $(git status -s) ]]; then
  echo "检测到未提交的修改，正在提交并推送..."
  git add .
  git commit -m "自动提交"
  echo "正在推送到远程分支: $current_branch"
  git push origin "$current_branch"
else
  echo "没有未提交的修改。"
fi