# Arbeitsbericht

|  |  |
| :--- | :--- |
| **Datum:** | 26.05.2026 |
| **Thema:** | Regular Expressions |
| **Name:** | Elia Albenberger |
| **Klasse:** | 3AHITS |
| **Fach:** | SYTB |
|||

# Uebersicht

- ****1. Uebung (RegexOne)****
- ****2. Uebung (Subdir Count)****
- ****3. Uebung (REs)****
- ****4. Uebung (sed)****
- ****5. Uebung (Datum)****
- ****6. Uebung (Logfile)****

## 1. Uebung (RegexOne)

### 1.1 Angabe:
Arbeite dich in RegexONE von Lesson 1 – 14.

### 1.1 Uebung:

![alt text](image.png)

## 2. Uebung (Subdir Count)

### 2.1 Angabe:
Schreibe einen shell Einzeiler mit dem man die Anzahl der Unterverzeichnisse im aktuellen Verzeichnisse zählt.

Tipp: Directories haben in der ls -l Ausgabe ganz am Beginn ein d.

### 2.1 Uebung:

```sh
#!/bin/bash

anzahl=$(ls -l | grep '^d' | wc -l)

echo "$anzahl"
```

**ls -l:** listet alles innerhalb des Ordners auf

**grep '^d':** nimmt alles was mit "d" anfängt

**wc -l:** zählt wieviele es sind und das ist die zahl die dann übergeben wird


## 3. Uebung (REs)

### 3.1 Angabe:
Finde 5 substantiell unterschiedliche Strings die durch folgende RE gematcht werden:
```sh
^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9.-]+$
```
Verwende zum test grep.js.org

Achtung: ERE daher -E Option notwendig.

### 3.1 Uebung:
```sh
^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9.-]+$
```
Diese Regular Expression sucht nach einer email-adresse

```^[a-zA-Z0-9_.+-]```: Hier wird der Vorname zum Beispiel ```max.mustermann``` gesucht.

```+@```: fügt ein @ nach ```max.mustermann@```ein

```[a-zA-Z0-9-]+\.[a-zA-Z0-9.-]+$```: sucht die domain zum beispiel ```gmail.com```. Das ```+\.```sagt das dazwischen ein punkt sein muss

1. Normale email-adresse

max.mustermann@gmail.com

2. Plus-Zeichen im vorderen Teil und ein Bindestrich in der Domain

info+newsletter@mein-shop.de

3. nutzt Zahlen und den Unterstrich.

user_1@12345.org

4. Nutzt so ziemlich jede Regel aus.

hallo.welt_123+-@mail-server.co.uk

5. Wenn man bei ```+\.``` den ```\```vergisst werden auch solche email-adresse ausgegeben da ```+.``` sagt: hier steht ein beliebiger Buchstabe

admin@serverXendung
## 4. Uebung (sed)#!/bin/bash

echo "#!/bin/env sh" > $1.sh

echo "echo \"$1 Skript\"" >> $1.sh
echo "# write your script here" >> $1.sh

chmod +x $1.sh

### 4.1 Angabe:
Löse mit sed:

Entferne alle # die sich am Ende der Zeile befinden
Entferne alle # die sich am Anfang der Zeile befinden
Füge === am Beginn jeder Zeile ein
Füge () rund um jedes Wort ein. Ein Wort ist definiert als mindestens ein nicht-Leerzeichen.

### 4.1 Uebung:

Jedes ```#```am ende löschen
```sh
sed -E 's/#+$//'
```

Jedes ```#```am anfang löschen
```sh
sed -E 's/^#+//'
```

```===```am beginn der Zeile einfügen
```sh
sed -E 's/^/===/'
```

```()```einfügen um jedes Wort
```sh
sed -E 's/^[:SPACE:]]+/(&)/g
```

```/.../```das was ersetzt werden soll wenn nichts drinnen steht wird es gelöscht

```s/``` steht für substitute also "ersetzen"

```^```anfang ```&```ende

```[:SPACE:]]```: sucht nach einen oder mehreren zeichen

```(&)``` & und ist für das wort um das die klammern gesetzt werden

```g``` global heißt es soll für jede Zeile angewendet werden


## 5. Uebung (Datum)

### 5.1 Angabe:
Mit sed. Datum re-formatieren von YYYY-MM-TT auf TT.MM.YYYY. 01/12/2020-> 12.01.2020. Das Datum kann sich an beliebiger Position in der Zeile befinden.

### 5.1 Uebung:

```sh
sed -E 's/([0-9]{4})-([0-9]{2})-([0-9]{2})/\3.\2.\1/g'
```

```{4}``` soll vier mal eine zahl von 0 - 9 sein

```/\3.\2.\1/``` anordnung ändern


## 6. Uebung (Datum)

### 6.1 Angabe:
Übung (Logfile)
Lege eine Textdatei mit folgendem Inhalt an (Ausschnitt aus einem Logfile).

Aufgabenstellung:
Verwende grep um nur jene Zeilen auszugeben die configure enthalten. Jene Zeilen die half-configured enthalten sollen nicht ausgegeben werden

Verwende grep um nur jene Zeilen auszugeben die libsombok oder libposix enthalten.
Verwende sed um die Zeilen ohne die Uhrzeit auszugeben, d.h. ersetzte durch einen leeren String.
Verwende sed um die Zeilen ohne das Datum auszugeben.
Verwende sed um das Datum umzuformatieren von YYYY-MM-TT auf TT.MM.YYYY. 2021-01-16-> 16.01.2021.

### 6.1 Uebung:
