#!/bin/bash
# You are given a small checkbook to balance that is given to you as a string.
# Sometimes, this checkbook will be cluttered by non-alphanumeric characters.
# The first line shows the original balance. 
# Each other (not blank) line gives information: check number, category, and check amount.
# You need to clean the lines first, keeping only letters, digits, dots, and spaces. 
# Next, return the report as a string. 
# On each line of the report, you have to add the new balance. 
# In the last two lines, return the total expenses and average expense.
# Round your results to two decimal places.
input='challenge.txt';
declare -a checkbook;
total=0;
for line in $(cat ${input}|tr -cd [' ','0-9','.','A-Z','a-z','\n']);do
	checkbook+=("${line}");
done;

echo ;

echo "Original_Balance: "${checkbook[0]};
for (( i = 1; i < ${#checkbook[@]}; i+=3 )); do
	echo ${checkbook[@]:${i}:3};
	total=`echo "scale=2;${total} + ${checkbook[${i}+2]}" |bc`;
done;
average=`echo "scale=2;${total}/((${#checkbook[@]}-1)/3)"|bc`;

echo "Total expense: " ${total};
echo "Average expense: " ${average};