# Arbeitsbericht

|  |  |
| :--- | :--- |
| **Datum:** | 14.04.2026 |
| **Thema:** | command substitution |
| **Name:** | Elia Albenberger |
| **Klasse:** | 3AHITS |
| **Fach:** | SYTB |
|||

# Uebersicht

- ****1. Uebung (Anzahl Einträge in einem Verzeichnis)****
- ****2. Uebung (Tage bis zum Ball)****
- ****3. Uebung (Zufaelliger Satz)****


## 1. Uebung (Anzahl Einträge in einem Verzeichnis)

### 1.1 Angabe:
Schreibe ein shellscript das als Argument einen Pfad auf ein Verzeichnis erhält. Das Script soll die Anzahl der Einträge in diesem Verzeichnis als Zahl ausgeben. Dies soll aus der ls Ausgabe mit wc ermittelt werden.
```sh
$ ./nbrentries.sh ~/test
Es sind 12 Einträge im dir ~/test
```

Hinweis – Vergleiche die Ausgaben von
```sh
ls
ls | cat
echo "$(ls)"
```

Dokumentiere den Unterschied, was ist die Logik dahinter.

### 1.1 Uebung:

shellscript.sh:
```sh
# anzahl an Dateien wird als Variable gespeichert
anzahl=$(ls $1 -a| wc -l)

echo "Es gibt $anzahl Einträge in $1."
```

shell:
```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ ./shellscript.sh ~/SYTB/3AHITS-SYTB-Albenberger-Elia
Es gibt 11 Einträge in /home/kali/SYTB/3AHITS-SYTB-Albenberger-Elia.
```

### 1.2 Uebung:
- ```ls```Listet den Inhalt eines Verzeichnisses auf.
- Ausgabe geht direkt auf den Bildschirm.

- ```ls | cat```Das | (Pipe) leitet die Ausgabe von ls an cat weiter.
- cat gibt das dann einfach wieder aus

- ```echo "$(ls)"```$(ls) führt ls aus und setzt die Ausgabe in den echo-Befehl ein.
- echo gibt alles als eine zusammenhängende Zeile aus.

## 2. Uebung (Tage bis zum Ball)

### 2.1 Angabe:
Schreibe ein Shell-Skript das die Anzahl der Tage bis zum HTL Ball ermittelt. Die Ausgabe soll in der folgenden Form sein.
```sh
Es sind noch 42 Tage bis zum HTL Ball (2027-01-16)
```
Hinweise:

Verwende das date Format für ```seconds since the Epoch (1970-01-01 00:00 UTC)```

### 2.1 Uebung:

tagebishtlball.sh:
```sh
# +%s ist das Format seconds since the Epoch (1970-01-01 00:00 UTC)
jetzt=$(date +%s)

# benutzt das datum vom htl-ball
htlball=$(date +%s --date "2027-1-16")

# differenz ausrechnen
differenz=$(($htlball - $jetzt))

# in Tage umwandeln
echo "$(($differenz/(3600*24)))"
```

shell:
```sh
┌──(kali㉿kali)-[~/SYTB/3AHITS-SYTB-Albenberger-Elia/Shells]
└─$ ./tagebishtlball.sh
276
```



## 3. Uebung (Zufaelliger Satz)

### 3.1 Angabe:
Erstelle ein Skript das einen Satz aus 5 zufälligen Wörtern bildet, z.B.:
```sh
richtig ganzen Kilometer auf Mittel
```

Wähle die Wörter aus dieser Wortliste.

- Hinweis: Das Komando sed -n 5p datei.txt gibt die 5te Zeile aus.
- Erweiterung: Das Skript soll auch die Anzahl der in der Wortliste enthaltenen Wörter ermitteln. D.h. die Konstante 1000 soll im Skript nicht vorkommen.

### 3.1 Uebung:

Hatte zu wenig Zeit leider nicht fertig geworden. Uebung wurde angefangen aber nicht mehr dokumentiert.
