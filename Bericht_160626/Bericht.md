# Arbeitsbericht

|  |  |
| :--- | :--- |
| **Datum:** | 26.05.2026 |
| **Thema:** | Schleifen Uebungen |
| **Name:** | Elia Albenberger |
| **Klasse:** | 3AHITS |
| **Fach:** | SYTB |
|||

# Uebersicht

- ****Theorie****
- ****1. Uebung (Even/Odd)****


## Theorie
```sh
#!/bin/env sh

# while
counter=1
while [ $counter -le 10 ] # <= 10
while ((counter<=10))
do
    echo $counter
    ((counter++))
done

#for

#Liste = durch while spaces getrennter string
data="1 2 3 4 5 6 7"
for d in data
do
    echo $d
done

for arg in $@
do
    echo $arg
done

for value in {20..25}
do
    echo $value
done

```


## 1. Uebung (Even/Odd)

### Angabe:
Create a simple script which will print the numbers 1–42 (each on a separate line) and whether they are even or odd.

### Uebung:

Geht von 1 - 42 durch und gibt die Zahlen aus die durch 2 ohne Rest dividiert werden können (Modulo 2)
```sh
for i in {1..42}
do
  if [ $((i % 2)) -eq 0 ]
  then
    echo "$i"
  else
    echo "$i"
done
```

## 2. Uebung (Summe und Maximum)

### Angabe:
Schreibe ein bash Skript das eine beliebige Menge von positiven Zahlen als Argumente aus der Kommandozeile übernimmt. Es soll die Summe und die größte Zahl ausgegeben werden. Hinweis: Verwende #@.

### Uebung:

