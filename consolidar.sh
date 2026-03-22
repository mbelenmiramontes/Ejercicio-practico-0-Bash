#!/bin/bash

# Inicio un bucle para que el script este siempre ejecutandose y
# buscando archivos

while true;
do
  for file in $HOME/EPNro1/entrada/*.txt;
  do
	if [ -f "$file" ]; then
    	  cat "$file" >> $HOME/EPNro1/salida/"$FILENAME.txt"
	  mv "$file" $HOME/EPNro1/procesado/
	fi
  done 
done
