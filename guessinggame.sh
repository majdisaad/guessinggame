#!/bin/bash

count_files() {
    local count=$(ls -1 | wc -l)
    echo $count
}


while true; do
    correct_count=$(count_files)
    
    echo "How many files are in the current directory? Guess: "
    read user_guess

    if [[ $user_guess -eq $correct_count ]]; then
        echo "Congratulations! You guessed correctly. There are $correct_count files."
        break
    elif [[ $user_guess -lt $correct_count ]]; then
        echo "Too low. Try again."
    else
        echo "Too high. Try again."
    fi
done