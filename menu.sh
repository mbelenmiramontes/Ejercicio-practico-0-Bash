#!/bin/bash



comprobar_entorno() {
        [[ -d "$HOME/EPNro1/entrada" && -d "$HOME/EPNro1/salida" && -d "$HOME/EPNro1/procesado" ]]
}

comprobar_filename() {
	[[ -n "$FILENAME" && -f "$HOME/EPNro1/salida/$FILENAME.txt" ]]
}

  echo "⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔ ꒰ MENÚ ꒱⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔"
  echo "╰┈➤. Opción 1)  Crear entorno"
  echo "╰┈➤. Opción 2)  Correr proceso"
  echo "╰┈➤. Opción 3)  Alumnos ordenados"
  echo "╰┈➤. Opción 4)  Notas más altas"
  echo "╰┈➤. Opción 5)  Nro padrón"
  echo "╰┈➤. Opción 6)  Salir"
  echo "⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔⏔"
  echo "Tu archivo final se llamará $FILENAME.txt (ദി˙ᗜ˙)"

while true
do

  echo ""
  read -p "Porfavor, elegí una opción: "
  echo ""

	if [[ $opcion != "1" && $opcion != "6" ]]; then
         if ! comprobar_entorno; then
            echo "Error: el entorno esta incompleto, por favor seleccionar la opcion 1 primero."
            continue
         fi
	fi


  case $opcion in

	1)
	  if comprobar_entorno; then
                echo "El entorno EPNro1 y sus subcarpetas ya existen."
          else
                mkdir -p $HOME/EPNro1/entrada $HOME/EPNro1/procesado $HOME/EPNro1/salida
            	echo "Creación de entorno EPNro1 exitoso."

	  fi
	;;

	2)
	  if [[ comprobar_entorno && -f $HOME/consolidar.sh ]]; then
                if mv $HOME/consolidar.sh $HOME/EPNro1; then
                        echo "Proceso funcionando correctamente en el background."
                        bash $HOME/EPNro1/consolidar.sh &
                else
                    	echo "No se pudo mover el archivo."
                fi
          elif [[ -f $HOME/EPNro1/consolidar.sh ]]; then
                echo "Proceso funcionando correctamente en el background."
          else
                echo "No podemos correr el proceso porque no existe el programa encargado."
          fi
	;;

	3)
          if comprobar_filename; then
            sort -n -k1 "EPNro1/salida/$FILENAME.txt"
          else
            echo "No existe el archivo $FILENAME. Por favor hacer el paso 2 primero"
          fi
	;;

	4)
	;;

	5)
	;;

	6)
	;;
  esac
