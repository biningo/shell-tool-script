#!/bin/bash
case $1 in
  a) echo "A" ;;
  b) echo "B" ;;
  c) echo "C" ;;
  *) echo "Other" ;;
esac

read -p "输入一个字母或则数字:" input

case "$input" in 
  [[:lower:]] | [[:upper:]] ) echo "输入了字母: $input" ;;
  [[:digit:]]) echo "输入了数字:$input" ;; #只能匹配一位数字
  *) echo "输入了其他"  ;;
esac



