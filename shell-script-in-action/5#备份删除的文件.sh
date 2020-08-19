#!/bin/bash
# alias rm=/<path>/<file-name> 替换命令
archivedir=$HOME/.deleted-files
realrm=$(which rm)
copy="$(which cp) -R"

#如果没有参数 则交给rm来提示错误信息
if [ $# -eq 0 ]
then 
  exec $realrm
fi 

flags=""
while getopts "dfiPRrvW" opt;do
  case $opt in
    f)  exec $realrm $@  ;; #强制删除
    *)  flags="$flags -$opt" #添加参数
  esac
done 
shift $((OPTIND-1)) #删除getopts的参数 只保留传入的文件名参数

if [ ! -d $archivedir ];then 
  if [ ! -w $HOME ];then
    echo "$HOME 不可写入" >&2
  fi 
  mkdir -p $archivedir 
  chmod 700 $archivedir
fi 

#遍历文件参数 因为被shift去掉了 getopts参数，所以只剩下文件参数了
for arg #内置变量
do
  newname=$archivedir/$(basename $arg)
  if [ -f $arg -o -d $arg ];then 
    $copy $arg $newname #添加到备份文件夹
  fi 
done 

#执行删除原来文件的操作
exec $realrm $flags $@ 

