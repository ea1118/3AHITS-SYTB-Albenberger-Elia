# Arbeitsbericht

|  |  |
| :--- | :--- |
| **Datum:** | 17.03.2026 |
| **Thema:** | Arbeitsbericht über cURL beim Notenmanagement |
| **Name:** | Elia Albenberger |
| **Klasse:** | 3AHITS |
| **Fach:** | SYTB |
|||

# Uebersicht

- ****Uebung (Browser Developer Tool)****
- ****Uebung (curl und Notenmanagement)****

## 1. Uebung (Browser Developer Tool)

### 1.1 Angabe:
Starte den Chrome Browser und öffne mit F12 die Developer Tools, wechsle auf den Network Tab, deaktiviere den Cache. Lade dann diese Seite im Browser. Du siehst nun alle Netzwerkzugriffe die beim öffnen dieser Seite ausgeführt werden.

Mache weiters einen Rechtsklick auf den Netzwerkzugriff mit dem die CSS Datei (style.css) geladen wird. Mit Copy » Copy as cURL wird eine curl Kommandozeile erzeugt die genau diesen Netzwerkzugriff nachstellt. Der Server kann diesen mit curl erzeugten Request nicht vom Request des Browsers unterscheiden. Das eröffnet viele “Hacking” Möglichkeiten.

### 1.1 Uebung:
- mit f12 öffnest du die developer tools. dort wählst du in der oberen leiste den network tab aus.
Hier siehst du alle netzwerkzugriffe. meistens sind das GET und POST requests, es gibt aber auch PUT oder DELETE.

- Wenn du einen bestimmten request in der kommandozeile ausführen willst, machst du im network tab einen rechtsklick darauf. dann wählst du copy und danach copy as cURL. den kopierten befehl kannst du direkt in deine konsole einfügen, um den output zu prüfen.

- Wenn die antwort vom server im json-format zurückkommt, handelt es sich in der regel um daten, die per javascript dynamisch in die webseite geladen werden.
Um das besser lesen zu können, kannst du die json response vom curl befehl in das tool jq pipen. dadurch wird die datenstruktur sauber formatiert und deutlich übersichtlicher dargestellt.






## 2. Uebung (curl und Notenmanagement)

### 2.1 Angabe:
- Starte Chrome.
- Öffne mit Ctrl + Shift + I (oder F12) die Browser Developer Tools. Deaktiviere den Cache im Network Tab.
- Lade HTL Braunau Notenmanagment.
- Logge dich im Notenmanagement ein und lade die Ergebnisse einer Leistungsfeststellung.
- Im Netzwerk-Tab: Finde den API Request der die angezeigten Daten aus dem Notenmanagement abruft (werden als JSON übertragen).
- Mache den gleichen Request mit curl.

### 2.1 Uebung:

- Siehe Übung 1.1

- Wenn man sich bisschen umsieht kann man die Noten/Kommentare/Punkte bei Tests seiner Mitschüler einsehen
- Generell findet man so ziemlich leicht Sicherheitslücken

