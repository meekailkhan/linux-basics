#!/bin/bash

sum=0

set -x
for j in 1 2 3 4 5 6 7 8 9 10
do 
    echo "loop in stage of ${j}"
    sum=$(( $sum + $j ))
done
set +x

echo the sum of num 1 to n is : 'n*(n+1)/2'
echo "Check value = $(( j * (j + 1) / 2 ))"

# echo "Check value = $(( j * (j + 1) / 2 ))"/


exit 0

