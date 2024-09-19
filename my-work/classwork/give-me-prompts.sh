#!/bin/bash

read -p "Give me one number: " NUM1
read -p "Give me another number: " NUM2
read -p "Give me an operation (+,-,*,/): " OP

if[[$OP==+]];
	then RESULT=$(($NUM1+$NUM2))
elif[[$OP==-]];
        then RESULT=$(($NUM1-$NUM2))
elif[[$OP==*]];
        then RESULT=$(($NUM1*$NUM2))
elif[[$OP==/]];
        then RESULT=$(($NUM1/$NUM2))
else;
	echo "That is not a proper input"


echo "Result of $NUM1 $OP $NUM2: $SUM"
