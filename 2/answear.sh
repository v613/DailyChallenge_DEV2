#!/bin/bash
# Your task is to return a string that displays a diamond shape on the screen using asterisk (“*”) characters.
# The shape that the print method will return should resemble a diamond. A number provided as input will represent the number of asterisks printed on the middle line. The line above and below will be centered and will have two less asterisks than the middle line. This reduction will continue for each line until a line with a single asterisk is printed at the top and bottom of the figure.
# Return null if input is an even number or a negative number.
# Note: JS and Python students must implement diamond() method and return None (Py) or null(JS) for invalid input.

drawAsteriks () {
	local n=${2};
	local row=${1};
	local numberOfSpaces=$(( (${n}-${row}-(${row}-1))/2 ));
	local numberOfchars=$(( ${n} - ${numberOfSpaces#-}*2 ));
	local spaces=$(printf '%*s' ${numberOfSpaces} '');
	local chars=$(printf '%*s' ${numberOfchars} '' | tr ' ' '+');
	local result=${spaces}${chars}${spaces};
	echo "${result}";
}

if [[ $((${1} % 2 )) = 0 ]]; then
	echo "the argument is even: ${1}";
else 
	for (( i = 1; i <= ${1}; i++ )); do
		drawAsteriks ${i} ${1};
	done;
fi
echo'';	