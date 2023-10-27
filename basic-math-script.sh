#!/bin/bash

echo "Welcome!"
echo "This function computes the sum and product of two numbers"
echo -n "Input the first number: "

# store the first number in a variable named 'num1'
read num1

echo -n "Input the second number: "

# store the second number in a variable named 'num1'
read num2

# calculating the sum of the two numbers
sum=$(($num1+$num2))

# calculating the product of the two numbers
product=$(($num1*$num2))

echo "The sum of $num1 and $num2 is $sum"
echo "The product of $num1 and $num2 is $product"

# adding the conditional statements
if [ $sum -gt $product ]
then
    echo "The sum is greater than the product"
elif [ $sum -lt $product ]
then
    echo "The sum is less than the product"
elif [ $sum == $product ]
then
    echo "The sum is equal to the product"
fi