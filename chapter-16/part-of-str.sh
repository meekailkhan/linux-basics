#!/bin/bash

echo "enter two string for comparing a part of that string"

read str1 str2

echo "string one = ${str1} and string two is ${str2}"

string1=$str1:0:5
string2=$str2:0:5

if [[ $string1 == $string2 ]]; then
    echo "strin1 starting character same as string two"
elif [[ $string1 > $string2 ]]; then
    echo "string one is greaterthen string 2"
else 
    echo "string two is greaterthen string 1"
fi
