#!/bin/bash

echo -n "Enter a number between 1 and 3 inclusive > "
read character
case $character in
    1 ) echo "You entered one."
        ;;
    2 ) echo "You entered two."
        ;;
    3 ) echo "You entered three."
        ;;
    * ) echo "You did not enter a number between 1 and 3."
esac

echo -n "Type a digit or a letter > "
read character
case $character in
    # check for letters
    [[:lower:]] | [[:upper:]] ) echo "You typed the letter $character"
    ;;
    # check for digits
    [0-9] ) echo "You typed the digit $character"
    ;;
    # chek for anything else
    * ) echo "You did not type a letter or a digit"
esac

