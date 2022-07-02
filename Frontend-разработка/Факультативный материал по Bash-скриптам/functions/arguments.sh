#!/usr/bin/env sh

sum_two_numbers() {
    local first
    local second

    first="$1"
    second="$2"

    echo "$((first + second))"
}

sum_two_numbers 2 3

# Default values:
greet() {
    local user
    user="${1:-root}"

    echo "Hello, $user"
}

greet Simon # Hello, Simon
greet       # Hello, root

# Named arguments:
with_named() {
    local h
    local p
    local d

    OPTIND=1

    while getopts 'hd:p:' opt; do
        case "$opt" in
            h) h=$OPTARG;;
            p) p=$OPTARG;;
            d) d=$OPTARG;;

            *) (echo 'invalid arg'; exit 1);;
        esac
    done

    shift $((OPTIND-1)) 
    [ "$1" = '--' ] && shift

    echo "
    ARGS:
    - h: $h
    - p: $p
    - d: $d
    "
}

with_named -p 'text'
with_named -h -d 1 -p 'text'
with_named -e 1