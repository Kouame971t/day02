#!/bin/bash
if [ $# -lt 1 ]; then
  echo "Usage: $0 <prenom>"
  exit 1
fi
echo "Hello, $1 !"
