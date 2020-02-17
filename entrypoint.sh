#!/bin/sh -l

$DICT_PATH="$3"
if [ -z "$DICT_PATH" ]
then
    yaspeller -e $1 $2
else
    yaspeller --dictionary $DICT_PATH -e $1 $2
fi
