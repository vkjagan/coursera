##This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user will be informed if their guess is too high or too low.
##Once the user guesses the correct number of files in the current directory they should be congratulated.

#!/usr/bin/env bash

#The program should contain at least one function
function files_in_directory {

	echo $(ls -l | grep -v 'total' | grep -v '^d' | wc -l)
}

#Find the number of files in the current directory
number_of_files=$(files_in_directory)

#Inicialize the variable "guess"
let guess=$number_of_files+1

#The program should not end until the user has entered the correct number of files in the current directory.
while [[ $number_of_files -ne $guess ]] 
do
	#When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.
	echo "How many files are in the current directory ?"
	read guess

	#If the user's guess is correct then they should be congratulated and the program should end.
	if [[ $number_of_files -eq $guess ]] 
	then
		echo "Congratulations my friend, $guess is the number !" 
	#If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
	elif [[ $number_of_files -gt $guess ]]
	then 
		echo "you guessed a number too low"
		echo "Please, try again..." 
	else
		echo "you guessed a number too high"
		echo "Please, try again..."
	fi
done