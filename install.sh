#!/bin/bash
echo "Installation in progress..."

if ! which tree > /dev/null 2>&1; then
  sudo apt update && sudo apt install -y tree
fi

alias treedir='tree ~/'
