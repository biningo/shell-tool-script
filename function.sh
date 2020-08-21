#!/bin/bash

hello(){
return 10 #只能返回数字类型120 
}
hello
echo $? #可以拿到上一个函数的返回值 

count=0
f1(){
  count=10000
  username=abc #函数内的变量是全局变量 外部可以访问 
  local age=18 #声明函数内部的局部变量 
}

f1
echo "count:"$count #10000  
echo "username:"$username #abc
echo "age:"$age #局部变量 无值
