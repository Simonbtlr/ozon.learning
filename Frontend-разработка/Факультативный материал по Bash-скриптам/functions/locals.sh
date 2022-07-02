#!/usr/bin/env sh

# First example:
GLOBAL_VAR='global'

my_function() {
    local variable=1
    OTHER_VARIABLE=2

    echo "GLOBAL_VAR in function $GLOBAL_VAR"
}

my_function

echo "GLOBAL_VAR is $GLOBAL_VAR"
echo "OTHER_VARIABLE is $OTHER_VARIABLE"
echo "variable is: $variable"
echo "missing is: $missing"

# Locals without a value:
second_function() {
    local first
    local second

    echo "$first and $second"
}

second_function

# Locals without a value on init:
third_function() {
    local first
    local second

    first='first text'
    second='second value'

    echo "$first and $second"
}

third_function