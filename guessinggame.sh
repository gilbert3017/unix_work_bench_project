#!/bin/bash

echo "How many files are in the current directory!"
echo "Guess: "
read guess

function file_number {
	local number=$(ls -l | wc -l)-1
	echo $number
}

correct=$(file_number)

while [[ $guess -ne $correct ]]
do
	if [[ $guess -gt $correct ]]
	then
		echo "Your guess was too high, please try a lower number..."
	else
		echo "Your guess was too low, please try a higher number..."
	fi
	echo
	echo "Guess again: "
	read guess
done

echo "Congratulations! You guessed the right number!"
