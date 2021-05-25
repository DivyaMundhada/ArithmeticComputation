#! /bin/bash -x

declare -A dict

echo "Enter any three numbers:"
read a b c
echo The three numbers are $a,$b,$c
dict['op1']=`expr  $a + $(( $b * $c )) `
dict['op2']=`expr  $(( $a * $b )) + $c `
dict['op3']=`expr $c + $(( $a / $b )) `
dict['op4']=`expr $(( $a % $b )) + $c `
echo Result for various operations are: ${dict[*]}
