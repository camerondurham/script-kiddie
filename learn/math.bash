#!/bin/bash

first_num=0
second_num=0

echo -n "Enter the first number --> "
read first_num
echo -n "Enter the second number -> "
read second_num

echo "first + second = $((first_num + second_num))"
echo "first - second = $((first_num - second_num))"
echo "first * second = $((first_num * second_num))"
echo "first / second = $((first_num / second_num))"
echo "first % second = $((first_num % second_num))"
echo "first raised to the power "
echo "power of the second number = $((first_num ** second_num))"
