#!/bin/bash

shift_text() {
    echo "$1" | sed 's/\(.\)\(.*\)/\2\1/g'
}

read -p "Enter some text: " -r TEXT
read -p "Enter line amount: " NUM
NUM=$(($NUM + 1))

while :; do
    if [ $NUM -eq 0 ]; then
    break
    fi
    echo $TEXT
    TEXT=`shift_text "$TEXT"`
    NUM=$(($NUM - 1))
done
