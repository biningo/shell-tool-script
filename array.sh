#!/bin/bash


#遍历数组
arr=(1 2 3 4)
for i in ${arr[*]};do
  echo $i 
done 


#拷贝一个数组
arr2=(${arr[*]} a b c )
arr2[0]=99  #不会改变原来的值
echo ${arr2[*]}
echo ${arr[*]}

echo ${arr[*]:2} #提取数组成员 

