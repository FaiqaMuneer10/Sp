#!/bin/bash

read f1;
read u1;
a=(`ls -l $f1`)


echo  ${a[2]} ;

if [ ${a[2]} = $u1 ] 


then echo "cheating =0";





else  echo "cheating =1";
fi;

