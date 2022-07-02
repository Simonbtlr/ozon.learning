#!/usr/bin/env sh

# greping:
ps aux | grep 'some process'
ls | grep 'some_folder'

# finding:
find . -name '*.sh' -type f | sort -n
find . -name '*.sh' -type f | sort -n | xargs wc