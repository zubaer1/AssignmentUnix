#!/bin/bash
# File: guessinggame.sh

numfiles=$(( ls -1 | wc -l ))

echo "Guess how many files are in the current folder!"

guess="-1"

function countFilesInDir ()
{
    ls -1 | wc -l
}


while [[ $(countFilesInDir) != $guess ]]
do
    read guess
    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Invalid input! Please try again!"

    elif (( guess > $(countFilesInDir) ))
    then
        echo "The number is too high. please try again!:"

    elif (( guess < $(countFilesInDir) ))
    then
        echo "The number is too low. please try again!:"

    else
        echo "Correct"
        break
    fi
done
