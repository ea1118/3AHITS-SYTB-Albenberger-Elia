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

