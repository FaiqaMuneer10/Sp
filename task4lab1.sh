#!/bin/bash

a=(`cat "file"`);
echo ${a[@]} ;
 
echo ${a[1]} ;

echo ${#a[@]};

echo ${#a[2]};
