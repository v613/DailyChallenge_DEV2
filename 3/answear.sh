#!/bin/bash
# Write a function that returns the number (count) of vowels in a given string. 
# Letters considered as vowels are: a, i, e, o, and u. 
# The function should be able to take all types of characters as input, including lower case letters, upper case letters, symbols, and numbers. 
echo "some STRING 123 ^()" | grep -o -i "[aeiou]" | wc -l;