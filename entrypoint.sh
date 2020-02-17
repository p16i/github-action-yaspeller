#!/bin/sh -l

DICT_PATH="$3"
if [ -z "$DICT_PATH" ]
then
    echo "run w/0 dictionary"
    yaspeller $1 $2
else
    echo "run with dictionary"
    yaspeller --dictionary $DICT_PATH $1 $2
fi