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




if validint $1 $2 $3
then 
  echo "$1:int!"
else
  echo "$1:is not int!"
fi

