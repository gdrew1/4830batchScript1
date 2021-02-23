#! /bin/sh
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    echo "Size: $SIZE"
    WORDS="$(wc -w "${f}" | cut -f1)"
    echo "Words: $WORDS"
  fi
done

