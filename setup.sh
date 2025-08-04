#!/bin/bash

show_help() {
  echo "Usage: ${0} [-w] [-m] "
  echo "Options:"
  echo "  -w    Windows"
  echo "  -m    MacOS"
}

if [ $# -eq 0 ]; then
  show_help
  exit 0
fi

while getopts "wmh" OPT
do
  case $OPT in
    w)
      echo "[-w] が指定されました: Windows"
      # 環境設定のコードをここに追加
      ./win/setup.sh
      ;;
    m)
      echo "[-m] が指定されました: Mac"
      ./mac/setup.sh  
      ;;
    *)
      show_help
      exit 1
      ;;
  esac
done
