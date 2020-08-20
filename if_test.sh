#!/bin/bash
read -p "输入一个数字:" input

if [ $input -lt 10 ];then
  echo "$input lt 10"
elif [ $input -lt 100 ];then
  echo "$input lt 100"
else 
  echo "$input gte 100"
fi


