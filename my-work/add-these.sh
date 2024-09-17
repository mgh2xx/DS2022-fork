#!/bin/bash

echo "#1 - $1"
echo "#2 - $2"
echo "Let me find the sum"

SUM=$(($1 + $2))

sleep 3
echo "Sum: $SUM"
