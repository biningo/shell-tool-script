#!/bin/bash

#shift 移除脚本参数
echo "一共输入$# 个参数"

while [ ! -z $1 ];do
  echo "还有 $#个参数"
  echo $1
  shift
done
echo "完毕"
