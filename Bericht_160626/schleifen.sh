#!/bin/env sh

# while
counter=1
while [ $counter -le 10 ] # <= 10
while ((counter<=10))
do
    echo $counter
    ((counter++))
done





#for

#Liste = durch while spaces getrennter string
data="1 2 3 4 5 6 7"
for d in data
do
    echo $d
done

for arg in $@
do
    echo $arg
done

for value in {20..25}
do
    echo $value
done


