#!/bin/bash
# mkstruct.sh
# mit Positionsparameter und Default-Werten
# für den Kursnamen und den Speicherort

kursdir=${2:-$HOME}/${1:-Kurs}

mkdir ${kursdir} 
mkdir ${kursdir}/block1
mkdir ${kursdir}/block1/aufgaben
mkdir ${kursdir}/block1/loesungen
cp -R ${kursdir}/block1 ${kursdir}/block2
cp -R ${kursdir}/block1 ${kursdir}/block3
cp -R ${kursdir}/block1 ${kursdir}/block4
cp -R ${kursdir}/block1 ${kursdir}/block5

