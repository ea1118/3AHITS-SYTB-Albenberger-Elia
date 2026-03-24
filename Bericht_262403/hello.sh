# !/bin/env bash

# Hallo Welt

# Shell Script = Textdatei mit shell Befehlen
# Befehle ergeben das gleiche Ergebnis wie wenn in der shell ausgeführt 
<<'END_COMMENT'
echo $MYVAR Welt
echo Guten Morgen




FILE_NAME=test.txt
DIR_NAME=mydir
# mkdir $DIR_NAME
echo "Irgendein Text" > $DIR_NAME/$FILE_NAME



# double quotes
NAME=Aleksander
TEXT="Hallo $NAME"
echo $TEXT


#single quotes
TEXT2='Hallo $NAME'
echo $TEXT2
END_COMMENT
# curly braces {}

FILE=myname
echo "$FILE_001.txt"
echo "$FILE_002.txt"

echo "${FILE}_001.txt"
echo "${FILE}_002.txt"

