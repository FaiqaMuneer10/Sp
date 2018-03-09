#!/bin/sh 

echo "Enter two numbers : ";
read n1 ;
read n2;

Var=`expr $n1 + $n2`;
echo  "Addition is : $Var";

Var1=`expr $n1 - $n2`;
echo  "Subtraction is : $Var1";

Var2=`expr $n1 \* $n2`;
echo  "Multiplication is : $Var2";

if [ $n2 -eq 0 ]
then echo "Division by zero error";

elif [ $n2 -gt 0 -o  $n2 -lt 0 ] 
then echo  Division is :`expr $n1 / $n2`
fi;
