#!/bin/bash

input=$guess
$random=$secret_number
#$attempts=input+1#

echo "Welcome to the Number Guessing Game!"

echo "Guess the number (1-10) or enter '0' to quit:($attempts)"
if [["$guess" -lt "$secret_number"]]; then
echo "Too low! Try again."
fi

if [[ "$guess" -gt "$secret_number"]]; then
    echo "Too high! Try again."
fi

if [[ "$guess" -eq "0"]]; then
    echo "Thanks for playing. Goodbye!"
fi

if [[ "$guess" -eq "$secret_number"]]; then
    echo "Congratulations! You the guessed the correct number in ($attempts) attempts."
fi