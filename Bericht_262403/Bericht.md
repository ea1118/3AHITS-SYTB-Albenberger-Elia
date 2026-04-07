# Arbeitsbericht

|  |  |
| :--- | :--- |
| **Datum:** | 24.03.2026 |
| **Thema:** | [Arbeitsbericht über Variablen und Shell Scripts](https://www.franzmatejka.at/htl/doc/SYTB_3/02_variablen_ue.html) |
| **Name:** | Elia Albenberger |
| **Klasse:** | 3AHITS |
| **Fach:** | SYTB |

# Uebersicht

- ****Theorie****
- ****1. Uebung (Variablen)****
- ****2. Uebung (Begrüßung)****
- ****3. Uebung (Zeilenumbruch)****
- ****4. Uebung (admin)****
- ****5. Uebung (log file names)****
- ****6. Uebung (backup)****

## Theorie

Neue Variable erstellen in der shell mit Inhalt "hello" und exportieren damit man sie in "hello.sh" benutzen kann
```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Bericht_262403]
└─$ MYVAR=Hello

┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Bericht_262403]
└─$ echo $MYVAR
Hello

┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Bericht_262403]
└─$ export MYVAR
```

**hello.sh file:**
```sh
echo $MYVAR Welt
echo Guten Morgen
```

**Ausgabe:**
```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Bericht_262403]
└─$ ./hello.sh
Hello Welt
Guten Morgen
```

Erstelle neure Variablen: eine Textdatei und einen Ornder und Befehle die das erstellen ausführen
```sh
FILE_NAME=test.txt
DIR_NAME=mydir
mkdir $DIR_NAME
echo "Irgendein Text" > $DIR_NAME/$FILE_NAME
```

**Ausgabe:**
```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Bericht_262403]
└─$ ./hello.sh

┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Bericht_262403]
└─$ ls   
Bericht.md  hello.sh  mydir
                                               
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Bericht_262403]
└─$ ls mydir
test.txt

┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Bericht_262403]
└─$ cat mydir/test.txt
Irgendein Text
```

Neue Variable die im text eingesetzt wird
```sh
NAME=Aleksander
TEXT="Hallo $NAME"
echo $TEXT
```
**Ausgabe:**
```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Bericht_262403]
└─$ ./hello.sh
Hallo Aleksander
```
Bei single Quotes wird alles so ausgegeben wie reingeschrieben keine Variablen
```sh
TEXT2='Hallo $NAME'
echo $TEXT2
```

**Ausgabe:**
```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Bericht_262403]
└─$ ./hello.sh
Hallo $NAME
```

Curly Braces sorgen dafür das die shell weiß was eine echte Variable ist und was ein zusatz ist sonst sucht die shell nach den ganzen namen der eigentlich garnicht existiert.
```sh
FILE=myname
echo "$FILE_001.txt"
echo "$FILE_002.txt"

echo "${FILE}_001.txt"
echo "${FILE}_002.txt"
```
**Ausgabe:**
```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Bericht_262403]
└─$ ./hello.sh
.txt
.txt
myname_001.txt
myname_002.txt
```


## 1. Uebung (Variablen)

### 1.1 Angabe:
Löse diese Aufgabe ohne ein shell-script zu schreiben.

Lege 2 Variablen für Directories an, eine Variable für den Filenamen und eine Variable für die Dateiendung (Extension).

Verwende nur die Variablen anstatt der Directory und Filenamen um folgendes zu lösen:

- Erzeuge die Directories (das zweite befindet sich in dem ersten).
- Lege in dem zweiten Directory eine Text-Datei mit Inhalt an, verwende Filenamen und Extension (getrennt mit .).
- Gib den Inhalt der Datei (unter Verwendung der Variablen) aus.

### 1.1 Uebung:

**.sh file:**
```sh
dir1="Hauptordner"
dir2="Unterordner"
filename="meineDatei"
ext="txt"
```
```sh
mkdir -p $dir1/$dir2
```
```sh
echo "Hallo Welt" > $dir1/$dir2/$filename.$ext
```

```sh
cat $dir1/$dir2/$fname.$ext
```

## 2. Uebung (Begrueßung)
### 2.1 Angabe
Schreibe ein Shell-Script mit dem Namen begruessung.sh, dieses soll:
 
den Benutzer nach seinem Namen fragen
den Namen einlesen und in einer Variable speichern
danach ausgeben:  
Hallo NAME  
Schön, dass du da bist.
 
Starte das Script auf alle besprochene Arten.
 
Hinweis: Verwende den read Befehl – recherchiere wie dieser zu verwenden ist.
 
### 2.1 Uebung
 
```
begruessung.sh:
 
read NAME
echo Hallo $NAME
echo Schön, dass du da bist.
 
chmod 755 begruessung.sh      
 
./begruessung.sh

Aleksander
Hallo Aleksander
Schön, dass du da bist.
```
 
## 3. Uebung (Zeilenumbruch)
### 3.1 Angabe
Erzeuge eine Variable MSG, die mit echo $MSG folgende Ausgabe erzeugt:
 
Name: Dein Name  
Klasse: 3AHITS  
Raum: ...  
 
Vorgaben/Hinweise:
 
Es darf nur eine Variable verwendet werden.
Der Zeilenumbruch muss in der Variablen mit \n definiert sein.
 
### 3.1 Uebung
 
```
MSG="Name: Elia Albenberger\nKlasse: 3AHITS\nRaum: ..."
                          
echo $MSG                                 
Name: Elia Albenberger
Klasse: 3AHITS
Raum: ...
```
 
## 4. Uebung (admin)
### 4.1 Angabe
Gegeben ist:
 
USER="admin"
 
Gib folgende Strings mit echo korrekt aus:  
admin_backup  
admin_2026  
Erkläre, warum folgende Zeile nicht das gewünschte Ergebnis liefert:  
echo "$USER_backup"
 
Warum geht echo ```"$USER_backup"``` nicht? Weil Bash denkt die Variable heißt USER_backup
 
### 4.1 Uebung
```
USER="admin"
 
echo "${USER}_backup"                     
                          
echo "${USER}_2026"  
```
 
## 5. Uebung (log file names)
### 5.1 Angabe
Gegeben ist:
 
DIR="/var/log/"
 
Erzeuge mit echo folgende Ausgaben unter Verwendung der Variabelen DIR:
 
- /var/log/nginx  
- /var/log/apache
 
### 5.1 Uebung
 
```
DIR="/var/log/"
 
echo "${DIR}nginx"
              
echo "${DIR}apache"
```
 
## 6. Übung (backup)
### 6.1 Angabe
Gegeben ist:
 
BASE="backup"  
DATE="2026-01-16"
 
Erzeuge folgende Dateinamen mit echo:
 
backup_2026-01-16.tar  
backup_2026-01-16.tar.gz
 
### 6.1 Uebung
```
BASE="backup"      
                                   
DATE="2026-01-16"
                                   
echo "${BASE}_${DATE}.tar"

                        
echo "${BASE}_${DATE}.tar.gz"
