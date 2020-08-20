#!/bin/bash
select choose in A B C D
do 
  break 
done
echo "你选择了:"$choose


select choose in running basketball football coding
do 
  case $choose in 
    running) echo "I'm running!";break ;;
    basketball) echo "I'm play basketball";break ;;
    football) echo "I'm play football";break ;;
    coding) echo "I'm coding";break ;;
    *) echo "Invalid entry." ;;
  esac
done


