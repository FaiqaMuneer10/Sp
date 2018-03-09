#!/bin/bash
function arg_1()
{

ans=$1

for i in `ls`
do 

if [ -f $i ]
then 
set `ls -l`

	if [ $ans = $5 ]
	then echo  $i 
	fi
fi
done

}
if [ $# -eq 0 ]
then echo "You entered no argument !!"

elif [ $# -gt 1  ]
then echo "Arguments must be less than 1!! "


elif [ $# -eq 1 ]
then arg_1 $1
fi
