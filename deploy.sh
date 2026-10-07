#!/bin/sh
# index.html 수정 후 실행하면 커밋·푸시되어 GitHub Pages에 반영된다 (1~2분 소요)
set -e
cd "$(dirname "$0")"
if git diff --quiet && git diff --cached --quiet; then
  echo "변경 사항이 없습니다."; exit 0
fi
git add index.html
git commit -m "${1:-docs: 용어집 내용 업데이트}"
git push
echo "푸시 완료. 1~2분 뒤 https://fricom.github.io/e-glossary/ 에 반영됩니다."
