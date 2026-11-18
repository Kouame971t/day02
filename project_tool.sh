#!/bin/bash

case "$1" in
  init)
    git init -b main
    echo "# Mon projet" > README.md
    git add README.md
    git commit -m "Initial commit"
    ;;
  save)
    git add .
    git commit -m "save $(date)"
    ;;
  reset)
    find . -type f -name "*.log" -delete
    echo "Fichiers .log supprimés"
    ;;
  *)
    echo "Usage: $0 {init|save|reset}"
    exit 1
    ;;
esac
