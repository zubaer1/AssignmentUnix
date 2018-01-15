all: test1.txt README.md

text1.txt:
    touch text1.txt
    echo “This is Zubaer “>>test1.txt
    echo “This is assignment for UNIX”>>test1.txt
  
README.md:
    touch README.md
    echo “#This is README.md file for Peer-graded Assignment.”>README.md
    echo “##Title of Project: Project for Unix## ”>>README.md
    echo “**Date and Time:   **” >>README.md
    date %c >>README.md
    echo "The guessinggame.sh file contains: **`wc -l < guessinggame.sh`** lines of code" >> README.md  
  
clean:
    rm text1.txt


