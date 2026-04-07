# Arbeitsbericht

|  |  |
| :--- | :--- |
| **Datum:** | 24.03.2026 |
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