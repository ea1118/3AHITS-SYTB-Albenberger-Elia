# Arbeitsbericht

|  |  |
| :--- | :--- |
| **Datum:** | 07.04.2026 |
| **Thema:** | [Arbeitsbericht über Variablen und Shell Scripts](https://www.franzmatejka.at/htl/doc/SYTB_3/02_variablen_ue.html) |
| **Name:** | Elia Albenberger |
| **Klasse:** | 3AHITS |
| **Fach:** | SYTB |

# Uebersicht

- ****1. Uebung (Directory Struktur)****
- ****2. Uebung (Skript Generator)****
- ****3. Uebung (Headline Cat)****
- ****4. Uebung (RANDOM)****

## 1. Uebung (Directory Struktur)

### 1.1 Angabe:
Schreibe ein Shell-Script das Unterverzeichnisse und Dateien anlegt, es wird ein Argument an das Script übergeben.

Aufruf: ./build_dirs.sh abcd

Dies führt zu folgender Directorystruktur:

```
./
└── abcd/
    ├── abcd_01/
    │   ├── abcd.01.1.txt
    │   ├── abcd.01.2.txt
    │   └── abcd.01.3.txt
    └── abcd_02/
        ├── abcd.02.1.txt
        ├── abcd.02.2.txt
        └── abcd.02.3.txt
```

Schreibe weiters ein Shell-Script clean_dir.sh das diese Verzeichnisstruktur wieder löscht.

Hinweis: Das Kommando tree kann verwendet werden um eine Directory Struktur in obiger Form darzustellen.

### 1.1 Uebung:

**build_dirs.sh:**
```sh
#!/bin/bash

# Haupt/Unterordner
mkdir -p $1/${1}_{01,02}

# Erstellt alle Dateien in den Ordnern
touch $1/${1}_01/$1.01.{1,2,3}.txt
touch $1/${1}_02/$1.02.{1,2,3}.txt

tree $1
```


```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ ./build_dirs.sh abcd
abcd
├── abcd_01
│   ├── abcd.01.1.txt
│   ├── abcd.01.2.txt
│   └── abcd.01.3.txt
└── abcd_02
    ├── abcd.02.1.txt
    ├── abcd.02.2.txt
    └── abcd.02.3.txt

3 directories, 6 files
```

**Löschen des Dateienpfads:**

**clean_dir.sh:**
```sh
#!/bin/bash
rm -rf "$1"
```

```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ ./clean_dir.sh abcd
```
Das die Dateien gelöscht wurden sieht man indem in meiner Datei der Ordner abcd wieder verschwindet


## 2. Uebung (Skript Generator)

### 2.1 Angabe:
Schreibe ein Skript das

- eine Skriptdatei erzeugt (Name wird als Argument übergeben),
- die She-Bang Zeile einfügt,
- einen echo Befehl einfügt und
- das eXecution Flag für das Skript setzt.
Anwendung:
```
$ ./makescript.sh mytest
```
erzeugt die Datei mytest.sh :
```
#!/bin/env sh

echo "mytest Skript"

# write yor script here
```

Das erzeugte Skript kann sofort ausgeführt werden:
```
$ ./mytest.sh
```

### 2.1 Uebung:

**makescript.sh:**
```sh
#!/bin/bash

echo "#!/bin/env sh" > $1.sh

echo "echo \"$1 Skript\"" >> $1.sh
echo "# write your script here" >> $1.sh

chmod +x $1.sh
```

Test.sh wird erstellt mit den dingen in makescript.sh
```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ ./makescript.sh Test
```
Man kann jetzt in Test.sh sein shell script schreiben

## 3. Uebung(Headline Cat)

### 3.1 Angabe:
Verwende $@ zur Lösung dieser Aufgabenstellung.

Schreibe ein Skript das eine Art cat zur Verfügung stellt. Als Argumente werden eine beliebige Anzahl von Textdateien übergeben. Das Ergebnis (der Inhalt aller dieser Dateien) wird in die Datei result.txt (fixer Dateiname) geschrieben (ist die Datei vorhanden soll deren Inhalt überschrieben werden). Jedem Datei-Inhalt soll eine Überschrift vorangestellt werden.

Beispiel – der Aufruf
```
$ ./headline_cat.sh file1.txt file2.txt file3.txt
```
ergibt die Datei result.txt mit folgendem Inhalt:
```
== file1.txt ==========================================
Das ist der Inhalt
der ersten Textdatei

== file2.txt ==========================================
Das ist der Inhalt
der zweiten Textdatei

== file3.txt ==========================================
Das ist der Inhalt
der dritten Textdatei
```

### 3.1 Uebung:

headline_cat.sh:
```sh
#!/bin/bash

# Leert die Datei result.txt bzw. erstellt sie
> result.txt

# Geht alle übergebenen Argumente/Dateien durch
for file in "$@"; do
    echo "== $file ==========================================" >> result.txt
    cat "$file" >> result.txt
    echo "" >> result.txt # Extra Zeile für lesbarkeit
```



Shell:
```sh

┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ echo -e "Das ist der Inhalt\nder ersten Textdatei" > file1.txt

┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ echo -e "Das ist der Inhalt\nder zweiten Textdatei" > file2.txt

┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ echo -e "Das ist der Inhalt\nder dritten Textdatei" > file3.txt

┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ ./headline_cat.sh file1.txt file2.txt file3.txt

┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ cat result.txt
== file1.txt ==========================================
Das ist der Inhalt
der ersten Textdatei

== file2.txt ==========================================
Das ist der Inhalt
der zweiten Textdatei

== file3.txt ==========================================
Das ist der Inhalt
der dritten Textdatei
```



## 4. Uebung(RANDOM)

### 4.1 Angabe:
Schreibe ein shellscript das eine beliebige Menge von Dateinamen als Parameter akzeptiert. Von jeder dieser Dateien soll eine Kopie im gleichen Verzeichnis angelegt werden. Die Kopie unterscheidet sich vom Original durch eine angefügte Zufallszahl, Beispiel:
```sh
test.txt --> test.txt.38573
```

Aufrufbeispiele:
```sh
$ ./randcp.sh test1.txt test2.txt
$ ./randcp.sh xyz1.md test3.txt abcd.dat
$ ./randcp.sh *.md
```

- Hinweis: $RANDOM liefert bei jeder Verwendung eine zufällige Zahl.
- Achtung: #!/bin/bash in der she-bang Zeile verwenden. sh unterstützt (in REPL) keine Zufallszahlen.


### 4.1 Uebung:

randcp.sh:
```sh
#!/bin/bash

for file in "$@"; do
    # Kopiert und fügt zufallszahl hinten an
    cp "$file" "$file.$RANDOM"
done
```

shell:
```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ touch xyz1.md test3.txt abcd.dat

┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ ./randcp.sh xyz1.md test3.txt abcd.dat

┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ ls -l
total 16
-rw-r--r-- 1 kali kali   0 Apr 07 09:15 abcd.dat
-rw-r--r-- 1 kali kali   0 Apr 07 09:15 abcd.dat.28471
-rwxr-xr-x 1 kali kali 124 Apr 07 09:13 randcp.sh
-rw-r--r-- 1 kali kali   0 Apr 07 09:15 test3.txt
-rw-r--r-- 1 kali kali   0 Apr 07 09:15 test3.txt.9382
-rw-r--r-- 1 kali kali   0 Apr 07 09:15 xyz1.md
-rw-r--r-- 1 kali kali   0 Apr 07 09:15 xyz1.md.15024
```

