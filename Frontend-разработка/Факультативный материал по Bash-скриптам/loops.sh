#!/usr/bin/env sh

SUM_RESULT=0;

while [ "$SUM_RESULT" -le 5 ]; do
    echo "Welcome $SUM_RESULT times"
    SUM_RESULT=$(( SUM_RESULT + 1 ))
done

# Reading lines from file
while read -r line; do
    echo "line: $line"
done < items.txt

# Infinite loops:
while true; do
    echo 'working'
    sleep 1
done

# Using for and arrays:
MY_ARRAY=(1 2 3)    # not POSIX

echo "Array size: ${#MY_ARRAY[*]}"

for item in ${MY_ARRAY[*]}; do
    echo "item: $item"
done