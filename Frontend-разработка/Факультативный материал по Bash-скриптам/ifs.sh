#!/usr/bin/env sh

MY_VAR=1;
MY_STRING='abc';

# Using `if`
if [ "$MY_VAR" -eq 1 ]; then
    echo 'MY_VAR is 1!'
else
    echo 'MY_VAR is not 1 :('
fi

# Using `if` with string:
if [ "$MY_STRING" = 'abc' ]; then
    echo 'Equal'
else
    echo 'Different'
fi

if [ -z "$MISSING" ]; then 
    echo 'Variable $MISSING is missing!'
fi

# Files:
if [ -f 'ifs.sh' ]; then
    echo 'File ifs.sh exists'
else
    echo 'This file does not exists'
fi

# Directories
if [ -d 'functions' ]; then
    echo 'Directory functions/ exists'
fi