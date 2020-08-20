#!/bin/bash
#列出当前目录下的所有 .sh 文件
for i in *.sh;do
  echo $i 
done
echo "----------------------------"
#计算for.sh 一共有多少单词 
count=0
for i in $(cat for.sh);do
  let count+=1
done
echo "for.sh:"$count



