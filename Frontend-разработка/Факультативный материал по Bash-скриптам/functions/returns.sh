#!/usr/bin/env sh

# Status code:
can_fail() {
    if [ "$1" -eq 5 ]; then
        echo 'error'
        return 1
    fi

    echo 'correct'
    
    return 0;
}

can_fail 1
echo "status code is: $?"

can_fail 5
echo "status code is: $?"

# subshell values:
returns_text() {
    if [ "$1" -eq 5 ]; then 
        echo 'error'
    else
        echo 'correct'
    fi
}

first=$(returns_text 1);
echo "returns: $first code: $?"

second=$(returns_text 5);
echo "returns: $second code: $?"