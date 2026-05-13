#!/bin/bash

echo "Which task do you want to delete"

	cat "alltasks.txt"

echo
read -p "Please select the task number you wish to delete from the above: " del1
echo
grep "^$del1 " "alltasks.txt"
read -p "Are you sure you want to delete the above task (y/n): " conf

if (( $conf == y )) then
    sed -i "/^$del1/ d" alltasks.txt
else
    echo "No task has been deleted"
fi
 



