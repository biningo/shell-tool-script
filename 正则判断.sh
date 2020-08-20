#!/bin/bash

input=$1
if [[ "$input" =~ ^-?[0-9]+$ ]];then
  echo "$input is integer"
else
  echo "$input is not integer"
fi 

