#!/bin/bash

FolderName=$1
FileName=$2
Text=$3

if [[ -d "$FolderName" ]]
then
  read -p "Soll das Directory $FolderName (mit files) gelöscht werden? [j|n]: " choice

  if [["$choice" == "j" ]]
  then
    rm -rf "$FolderName"
    else
    echo "Abgebrochen"
    fi
  
else
    mkdir -p "$FolderName"
    
    echo "$Text" > "$FolderName/$FileName"

    echo "Directory mit Inhalt wurde erstellt"
fi