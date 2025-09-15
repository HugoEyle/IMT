#!/bin/bash

#Class A	1 to 126
#Class B	128 to 191
#Class C	192 to 223
#Class D	224 to 239

firstPart=$(echo $1 | cut -d . -f 1)

if [ $firstPart -ge 1 ] && [ $firstPart -le 126 ]; then
	echo "class A : " $1
	exit 0
fi

if [ $firstPart -ge 128 ] && [ $firstPart -le 191 ]; then
        echo "class B : " $1
        exit 0
fi

if [ $firstPart -ge 192 ] && [ $firstPart -le 223 ]; then
        echo "class C : " $1
        exit 0
fi

if [ $firstPart -ge 224 ] && [ $firstPart -le 239 ]; then
        echo "class D : " $1
        exit 0
fi
