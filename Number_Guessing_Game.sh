#!/bin/bash

read -p "Please enter a number:" guess

attempts=1
secret_number= $((RANDOM % 10 + 1))
attempts=$attempts+1
winner=echo "Congratulations! You the guessed the correct number in ($attempts) attempts."
later=echo "Thanks for playing. Goodbye!"

echo "Guess the number (1-10) or enter '0' to quit:($attempts)"

echo "Welcome to the Number Guessing Game!"

until [["$guess" -eq "0"]]; then
    later;
        elif [["$guess" -eq "secret_number"]]; then
    winner;
        if [["$guess" -lt "$secret_number"]]; then
            echo "Too low! Try again.";
        if [[ "$guess" -gt "$secret_number"]]; then
            echo "Too high! Try again.";
done
