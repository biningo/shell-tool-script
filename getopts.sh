#!/bin/bash

#读取参数的一个工具命令

while getopts "a:bc:d:e" opt;do
  case $opt in
    a) echo "a is $OPTARG" ;;
    b) echo "b is true" ;;
    c) echo "c is $OPTARG" ;;
    d) echo "d is $OPTARG" ;;
    e) echo "e is true" ;;
  esac
done
echo "$OPTIND"
shift $((OPTIND-1))
echo $@
echo $#

for arg
do 
  echo $arg
done
