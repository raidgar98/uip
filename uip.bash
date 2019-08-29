#!/bin/bash
 
result=`curl -s l2.io/ip`
end_line='\n'

while getopts 'n' flag; do
  case "${flag}" in
    n) end_line='' ;;
    esac
done

printf "$result"
printf "$end_line"
