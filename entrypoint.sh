#!/bin/sh -l

DICT_PATH="$3"
if [ -z "$DICT_PATH" ]
then
    echo "run w/o dictionary"
    yaspeller -e $1 $2
else
    echo "run with dictionary"
    yaspeller --dictionary $DICT_PATH -e $1 $2
fi