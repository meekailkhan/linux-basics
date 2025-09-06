#!/bin/bash

echo "Are you from india"

read res

case "$res" in 
    "yes" | "y" | "Y" | "YES" ) echo "this service is for you" ;;
    "no" | "n" | "N" | "NO" ) echo "this service is not for people who are comes from other countries" ;;
    * ) echo "you have to give an answer" ;;
esac

exit 0
