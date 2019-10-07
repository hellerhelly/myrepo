#!/bin/bash
# Name        : mkscript.sh
# Beschreibung: Erzeugt ausführbare Datei mit Kommentaren
#             : für ein neues Script und ruft Editor auf
# Autor       : Jochen Reinholdt
# Version     : 1.0
#===================================================================

today=$(date +"%d.%m.%Y %H:%m")

# Das 1. Argument ist der Skriptfilename
filename=$1
# Das 2. Argument ist die Kurzbeschreibung
dscrp=$2
# Das 3. Argument ist der Autor
autor=$3
# Das 4. Argument ist die Version
version=$4
delim="#==================================================================="

echo "#!/bin/bash" > $filename
echo "# Name        : $filename" >> $filename
echo "# Beschreibung: $dscrp" >> $filename
echo "# Autor       : $autor" >> $filename
echo "# Version     : $version" >> $filename
echo "# Datum       : $today" >> $filename
echo $delim >> $filename
echo >> $filename

# Datei ausführbar machen
chmod +x $filename

# Datei im Editor öffnen und hinter den Kopf positionieren. Hier wird nano verwendet
nano +8 $filename
