#!/bin/bash
# hallo.sh gibt den Benutzer, den Scriptnamen, Datum und Uhrzeit
# sowie das arbeitsverzeichnis aus
echo "$USER hat $0 am $(date +"%d.%m.%Y") um $(date +"%H:%m") im Verzeichnis $PWD aufgerufen"
