#!/bin/bash
rmlog="./rm.log"

if [ $# -eq 0 ];then
  echo "参数为0" >&2
  exit 1
fi 

if [ "$1" = "-s" ];then #-s 表示不记录日志 静默模式 
  shift
else
  echo "$(date):${USER}:$@" >> $rmlog
fi 

rm $@




