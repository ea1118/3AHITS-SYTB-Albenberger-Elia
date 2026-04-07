#!/bin/bash

# Haupt/Unterordner
mkdir -p $1/${1}_{01,02}

# Erstellt alle Dateien in den Ordnern
touch $1/${1}_01/$1.01.{1,2,3}.txt
touch $1/${1}_02/$1.02.{1,2,3}.txt

tree $1