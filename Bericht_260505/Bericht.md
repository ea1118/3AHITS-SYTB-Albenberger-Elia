# Arbeitsbericht

|  |  |
| :--- | :--- |
| **Datum:** | 05.05.2026 |
| **Thema:** | if statement |
| **Name:** | Elia Albenberger |
| **Klasse:** | 3AHITS |
| **Fach:** | SYTB |
|||

# Uebersicht

- ****1. Uebung (Maximum)****
- ****2. Uebung (Un-/Gerade)****
- ****3. Uebung (Directory)****


## 1. Uebung (Maximum)

### 1.1 Angabe:

Schreibe ein bash Skript das 2 Zahlen als Argumente aus der Kommandozeile übernimmt. Die größere der beiden Zahlen soll ausgegeben werden.

### 1.1 Uebung:

**ifstatement.sh:**
```sh
#!/bin/bash

x=$1    
y=$2


if (( x > y )) 
then
    echo "$x"
else
    echo "$y"
fi
```

**ausgabe:**
```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ ./ifstatement.sh 3 5
5
```


## 2. Uebung (Un-/Gerade)

### 2.1 Angabe:
Schreibe ein Script das von einer als Argument übergebenen Zahl prüft ob sie gerade oder ungerade ist.

### 2.1 Uebung:

**ifstatement.sh:**

Es wird mit Modulo geschaut ob Rest (> 0) oder ob kein rest (== 0) herauskommt
```sh
#!/bin/bash

x=$1


if (( x % 2 == 0 )) 
then
    echo "Die Zahl ist gerade"
else
    echo "Die Zahl ist ungerade"
fi
```

**ausgabe:**

```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ ./ifstatement.sh 3  
Die Zahl ist ungerade
                                                          
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ ./ifstatement.sh 8
Die Zahl ist gerade
```

## 3. Uebung (Directory):

### 3.1 Angabe:

Schreibe ein Skript makedir.sh das mit einem Argument aufgerufen wird.
```sh
$ ./makedir.sh xyz
```
Ein Directory mit dem Namen xyz soll angelegt werden falls es nicht existiert. Im Directory lege eine Datei mit dem Namen xyz.txt und Inhalt xyz an.

Existiert das Directory bereits so soll gefragt werden ob das Directory gelöscht werden darf. Bei dieser Abfrage soll angegeben werden wie viele Files sich im Directory befinden.
```sh
Soll das Directory "xyz" (mit 5 Files) gelöscht werden? [j|n]: 
```
Auswahl j: Das Directory wird gelöscht und wieder wie oben angelegt.
Auswahl n: Das Skript wird beendet.

### 3.1 Uebung:

