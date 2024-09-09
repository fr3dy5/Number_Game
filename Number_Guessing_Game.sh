#!/bin/bash

echo "Welcome to the Number Guessing Game!"
echo "Guess the number (1-10) or enter '0' to quit:[ $attempts ]"
read -p "Please enter a number:" guess

attempts=1
secret_number=$((RANDOM % 10 +1)) 
attempts=$attempts+1

if [[ "$guess" -eq 0 ]]; then
    echo "Thanks for playing. Goodbye!";
elif [[ "$guess" -lt "$secret_number" ]]; then
    echo "Too low! Try again.";
elif [[ "$guess" -gt "$secret_number" ]]; then
    echo "Too high! Try again.";
else [[ "$guess" -eq "$secret_number" ]]; then
    echo "Congratulations! You the guessed the correct number in $attempts attempts.";
done