function file_number(){
file=6
echo "Please Type, how many files are in the current directory: "
read number
echo "You typed: $number"
while [ $number -eq $file ]
    do
echo “Congratulation, you file number is $file”
break
    done 
if [[ $file -gt $1 ]]  &&  [[ 9 -gt $1 ]]
then
 	echo "Please try again, type less than 9"
elif [[ $file -gt $1 ]]  &&  [[ 9 -lt  $1 ]]
then
	echo " Please try again with less number 9"
elif [[ $file -lt $1 ]]  &&  [[ 1 -lt  $1 ]]
then
echo " Please try again with higher than 1"
else
echo "Please type greater than 1"
fi
echo "End program"
exit
}
file_number

