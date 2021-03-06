#!/bin/bash

# Get a random quote fron the site http://www.quotationspage.com/random.php3
# Created by Eduardo San Martin Morote aka Posva
# http://posva.github.io
# Sun Jun 09 10:59:36 CEST 2013 
# Don't remove this header, thank you
# Usage: quotei

quote () {

	Q=$(curl -s --connect-timeout 2 "http://www.quotationspage.com/random.php3" | iconv -c -f ISO-8859-1 -t UTF-8 | grep -m 1 "dt ") 
	TXT=$(echo "$Q" | sed -e 's/<\/dt>.*//g' -e 's/.*html//g' -e 's/^[^a-zA-Z]*//' -e 's/<\/a..*$//g') 
	W=$(echo "$Q" | sed -e 's/.*\/quotes\///g' -e 's/<.*//g' -e 's/.*">//g') 
	if [ "$W" -a "$TXT" ]
	then
		echo "${W}: ${TXT}"
	fi
}

echo "Start collecting quotes, store at '~/.quotes'"
echo "Ctrl+C to stop"

for (( ; ; ))
do
    quote >> ~/.quotes
done
