#! /bin/bash -x

echo "Enter any three numbers:"
read a b c
echo The three numbers are $a,$b,$c
result=`expr $c + $(( $a / $b )) `
echo $result
