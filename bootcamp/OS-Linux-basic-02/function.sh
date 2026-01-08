#! /bin/bash

#echo "all params $*"
#echo "number of parameters $#"
#
#for param in $*
#  do
#    if [ -d "$param" ]
#    then
#      echo "executing scripts in the config folder: $param"
#      echo "content of the folder: "
#      ls -l "$param"
#    else
#      echo "not a directory: $param"
#    fi
#  done
  
function score_sum {
  sum=0
  while true
    do 
      read -p "enter a score: " score
      
      if [ "$score" == "q" ]
      then 
        break
      fi
      
      sum=$(($score+$sum))
      echo "total score: $sum"
    done
}  

function create_file() {
  file_name=$1
  is_shell_script=$2
  touch "$file_name"
  echo "file $file_name created"
  
  if [ $is_shell_script = true ]
    then
      chmod u+x "$file_name"
      echo "exucute permision"
  fi
  
  return 
}

create_file test-function.txt
create_file test-function.yaml
create_file test-function.sh true

function sum(){
  total=$(($1+$2))
  return $total
}

sum 2 10
result=$?
echo "2 and 10 is $result"