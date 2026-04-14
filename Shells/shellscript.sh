#!/bin/bash

# anzahl an Dateien wird als Variable gespeichert
anzahl=$(ls $1 -a| wc -l)

echo "Es gibt $anzahl Einträge in $1."