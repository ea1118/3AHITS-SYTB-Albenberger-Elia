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
