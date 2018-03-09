#!/bin/bash
function arg_1(){

for i in ` seq 1 10 `
do  echo "$1 * $i = ` expr $1 \* $i `  "
     
done

}

function arg_3()
{


for i in ` seq $2 10 `
do  echo "$1 * $i = ` expr $1 \* $i `   "
     
done


} 

function arg__3()
{


for i in ` seq $2 13 `
do  echo "$1 * $i = ` expr $1 \* $i `   "
    
done


} 


function arg_5()
{


for i in ` seq $2 $3 `
do  echo "$1 * $i = ` expr $1 \* $i `   "
    
done


} 

function arg_6()
{

a=$3
until  [ $a -eq $2 ]

do  echo "$1 * $a = ` expr $1 \* $a `   "
a=` expr $a - 1 `
    
done


} 

if [ $# -eq 0 ]
then echo "You entered no argument !!"

elif [ $# -gt 6  ]
then echo "Arguments must be less than 6!! "


elif [ $# -eq 1 ]
then arg_1 $1

  
elif [ $# -eq 3 ] 
then 
	       if [ $2 = "-s" ]
	       then arg_3 $1 $3
		elif [ $2 = "-e" ]
		 then arg__3 $1 $3
		fi
  
elif [ $# -eq 5 ] 
then

		if [ $2 = "-s" -a  $4 = "-e" ]
		then
		 arg_5 $1 $3 $5
		
		 
		else echo "Arguments are not correct"
                fi  

elif [ $# -eq 6 ]
then 
		if [ $2 = "-s" -a  $4 = "-e" -a $6 = "-r" ]
		then
 		 arg_6 $1 $3 $5
              else echo "Arguments are not correct"
                fi  

fi


