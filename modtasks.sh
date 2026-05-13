#!/bin/bash

#echo "Which task do you want to modify"

	cat "alltasks.txt"

echo
read -p "Please select the task number you wish to modify from the above: " mod1
	grep "^$mod1 " "alltasks.txt"

echo
read -p "What is the new status of the task (Progress/Pending/Completed): " mod2

sed -i "/^$mod1 / s/ - .*/ - $mod2/" "alltasks.txt"
echo
echo "Task status has been modified"
grep "^$mod1" "alltasks.txt"

