#!/bin/bash
clear

echo "================"
echo "Your Task Board"
echo "================"

TASK_FILE="alltasks.txt"

echo "1. Add a task"
echo "2. View all your task"
echo "3. Edit status of the task"
echo

read -p  "Select your action: " ac1

case $ac1 in
	1)
	 read -p "Enter your new task: " newtask 
	 read -p "Provide status of the task (Progress/Pending/Completed): " status
	 echo "$newtask" "-" "$status" >> $TASK_FILE
	;;
	2)
	 echo "All tasks: " 
	 cat "$TASK_FILE"
	;;
	3)
	 bash modtasks.sh
	;;
 	*)
         echo "Enter a valid response"
esac


: <<'COMMENT'
if (( $ac1 == 1 )) then
	read -p  "Enter your new task: " ta1
elif (( $ac1 == 2 )) then
	echo "All tasks: "
else
    echo "Please enter a valid response"
fi 

#read -p "a task" t3
#read -p "Add a task" t4

#read -p  "Add a task:" task1
#echo "Your task is $task1"
COMMENT

