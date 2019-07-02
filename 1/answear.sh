#!/bin/bash
# Your goal is to create a function that removes the first and last letters of a string.
# Strings with two characters or less are considered invalid.
# You can choose to have your function return null or simply ignore.
if [[ ${#1} > 2 ]]; then
	echo "'${1}' are lungimea ${#1}: a trecut validarea";
	echo "${1:1:$(($#1-2))}";
else echo "'${1}' are lungimea ${#1}: nu a trecut validarea";
fi