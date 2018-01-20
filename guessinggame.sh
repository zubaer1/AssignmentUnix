
numfile=$(( ls -1 | wc -l ))
echo "Guess how many files are in this folder!"

number="-1"
function countFile ()
{
    ls -1 | wc -l
}

while [[ $(countFile) != $number ]]
do
    read number
    if ! [[ "$number" =~ ^[0-9]+$ ]]
    then
        echo "Invalid input. Please try again"

    elif (( number > $(countFile) ))
    then
        echo "The number is too high. Please try again"

    elif (( number < $(countFile) ))
    then
        echo "The number is too low. Please try again"

    else
        echo "Correct"
        break
    fi
done
