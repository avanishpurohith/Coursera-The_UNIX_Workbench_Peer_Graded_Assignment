#!/usr/bin/env bash

echo "Welcome, To the Guessing Game..."	
echo "Guess, How many files are in the current directory?"	

function guessing_game {
if [[ $1 == ?([0-9]) ]]
    then
    if [[ $1 -gt $2 ]]			
    then
	echo "Its too High..!"								#Prints when the 'guessed_value' is greater than 'num_of_files'.
    elif [[ $1 -lt $2 ]]
    then
	echo "Its too Low..!"								#Prints when the 'guessed_value' is lesser than 'num_of_files'.
    else
	echo "Congratualations! Your guess is right..!"					#Prints when the 'guessed_value' is equal to 'num_of_files'.
    fi
else
    echo "Enter a number."
fi
}

num_of_files=$(ls -1 | wc -l)								#Takes the count of num of files in the current directory.

while [[ $guessed_value -ne $num_of_files ]]						#loops for the condition when guessed value is not correct.
do
    read -p "Enter your Answer : " guessed_value					#Taking the Input from the user.
    echo $(guessing_game $guessed_value $num_of_files)					#Calling the function to decide the correctness of the given input.
done

