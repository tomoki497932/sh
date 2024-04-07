#!/bin/bash

# すべての変更をステージング
git add .

# 変更があればコミット
if git diff --staged --quiet; then
  echo "変更がありません。"
else
  # 現在の日時でコミットメッセージを生成
  COMMIT_MESSAGE="自動コミット $(date +'%Y-%m-%d %H:%M:%S')"
  git commit -m "$COMMIT_MESSAGE"
  
  # リモートリポジトリにプッシュ
  git push origin main
  echo "変更をプッシュしました。"
fi
