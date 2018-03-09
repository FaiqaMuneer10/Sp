#!/bin/bash
echo "Enter file and user name2";
read f1;
read u1;
echo "Enter file and user name2";
read f2;
read u2;

a=(`ls -l $f1`)

a1=(`ls -l $f2`)


echo  ${a[2]} ;
echo  ${a1[2]} ;

if [ ${a[2]} =  ${a1[2]}  ] 

then c=`cat $f1` 
     d=`cat $f2`

if [ ${c[@]} -eq ${d[@]} ]
then echo "Cheating =1";
fi

else  echo "cheating =0";
fi;

