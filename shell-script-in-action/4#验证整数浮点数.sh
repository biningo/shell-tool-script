#!/bin/bash
validint(){
  number=$1   min=$2  max=$3

  if [ -z $number ]
  then 
    echo "number is empty!" >&2
    return 1
  fi 

  if [ "${number::1}" = "-" ]
  then 
    testValue=${number:1}
  else 
    testValue=$number 
  fi 

  nodigits=$(echo $testValue | sed 's/[[:digit:]]//g' )
  if [ ! -z $nodigits ]
  then 
    echo "不是整数" >&2
    return 1
  fi 

  if [ ! -z $min ]
  then
    if [ $number -lt $min ]
    then 
      echo "小于min" >&2
      exit 1
    fi 
  fi 
  

  if [ ! -z $max ]
  then
    if [ $number -gt $max ]
    then 
      echo "大于max" >&2
    exit 1
    fi
  fi 

  return 0
}


val=10
min=0
max=30
if validint $val $min $max
then 
  echo "$val:int!"
else
  echo "$val:is not int!"
fi


#------------------------------------验证浮点数------------------------------------
validfloat(){
  
  fval=$1
  #替换掉不是 . 的为空
  if [ ! -z $(echo $fval | sed 's/[^.]//g') ]
  then
    #获得小数点的前半部分
    decimal=$(echo $fval | cut -d. -f1)
    #小数点的后半部分
    backnum=$(echo $fval | cut -d. -f2)

    if [ ! -z $decimal ];then
      if ! validint $decimal ;then
        return 1
      fi
    fi
    

    #测试小数部分
    if [ ${backnum::1} = '-' ];then
      echo "小数点后不能有负号"
      return 1
    fi

    if [ ! -z $backnum ];then
      if ! validint $backnum ;then
        return 1
      fi
    fi


  else 
    if $fval = "-";then
      return 1
    fi
    if ! validint $fval "" "";then
      return 1
    fi

  fi
  return 0
}

if validfloat $1;then
  echo "$1 is float"
else
  echo "$1 is not float"
fi 






