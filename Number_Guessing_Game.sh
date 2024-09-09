#!/bin/bash

echo "Welcome to the Number Guessing Game!"
echo "Guess the number (1-10) or enter '0' to quit:($attempts)"
read -p "Please enter a number:" guess

attempts=1
secret_number=$((RANDOM%10)+1)
attempts=(($attempts)+1)
winner=echo "Congratulations! You the guessed the correct number in ($attempts) attempts."
later=echo "Thanks for playing. Goodbye!"

if [["$guess" -eq "0"]]; then
    later;
    elif [["$guess" -lt "$secret_number"]]; then
        echo "Too low! Try again.";
    elif [[ "$guess" -gt "$secret_number"]]; then
        echo "Too high! Try again.";
    else [["$guess" -eq "secret_number"]]; then
        winner;
done

##./Number_Guessing_Game.sh: command substitution: line 8: syntax error near unexpected token `+'
#./Number_Guessing_Game.sh: command substitution: line 8: `(RANDOM % 10 ) + 1'
#./Number_Guessing_Game.sh: line 9: syntax error near unexpected token `('
#./Number_Guessing_Game.sh: line 9: `attempts=(($attempts) + 1)'
#./Number_Guessing_Game.sh: line 10: Congratulations! You the guessed the correct number in (1) attempts.: command not found
#./Number_Guessing_Game.sh: line 11: Thanks for playing. Goodbye!: command not found
#./Number_Guessing_Game.sh: line 17: syntax error in conditional expression: unexpected token `;'
#./Number_Guessing_Game.sh: line 17: syntax error near `;'
#./Number_Guessing_Game.sh: line 17: `    elif [[ "$guess" -gt "$secret_number"]]; then'