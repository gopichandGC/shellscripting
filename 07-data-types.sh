#!/bin/bash
NUMBER1=$1
NUMBER2=$2
SUM=$(($NUMBER1+$NUMBER2))
echo "Total:: $SUM"
echo "Number of Args Passed:: $#"
echo "Total Number of Args:: $@"