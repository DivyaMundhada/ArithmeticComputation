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

count=0

for key in ${!dict[*]}
do
	temp=${dict[$key]}
        result[((count++))]=$temp
done

echo Result stored in array:${result[*]}

for ((i=0; i<4; i++))
do

    for((j=0; j<4-i-1; j++))
    do

        if [ ${result[j]} -gt ${result[$((j+1))]} ]
        then
            temp=${result[j]}
            result[$j]=${result[$((j+1))]}
            result[$((j+1))]=$temp
        fi
    done
done

echo Result in Ascending Order: ${result[*]}
