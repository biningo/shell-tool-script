#!/bin/bash
monthNumToName(){
  case $1 in
    1) month="Jan"  ;;  2) month="Feb"  ;;
    3) month="Mar"  ;;  4) month="Apr"  ;; 
    5) month="May"  ;;  6) month="Jun"  ;;
    7) month="Jul"  ;;  8) month="Aug"  ;;
    9) month="Sep"  ;;  10) month="Oct"  ;;
    11) month="Nov"  ;;  12) month="Dec"  ;;
    *) echo "$0:Unknow numeric month value $1" >&2
      exit
  esac
  return 0
}

#验证参数个数
if [ $# -ne 3 ]
then 
  echo "Usage:$0 month day year" >&2
  exit 1
fi

#验证年份是否为4位数
if [ $3 -le 999 ]
then 
  echo "$0:expceted 4-digit year value" >&2
  exit 1 
fi 

#验证月份是否为数字
if [ -z $(echo $1 | sed 's/[[:digit:]]//g') ]
then 
  monthNumToName $1
fi

#输出结果
echo $month $2 $3

exit 0







