#! /bin/bash

echo "all params $*"
echo "number of parameters $#"

for param in $*
  do
    if [ -d "$param" ]
    then
      echo "executing scripts in the config folder: $param"
      echo "content of the folder: "
      ls -l "$param"
    else
      echo "not a directory: $param"
    fi
  done
  
while [ -d $param ]
  do
    echo "the $param is folder"
    break
  done
  
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

  