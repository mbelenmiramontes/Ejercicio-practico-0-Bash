#!/bin/bash



comprobar_entorno() {
        [[ -d "$HOME/EPNro1/entrada" && -d "$HOME/EPNro1/salida" && -d "$HOME/EPNro1/procesado" ]]
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


	  fi
	;;

	2)
	;;

	3)
	;;

	4)
	;;

	5)
	;;

	6)
	;;
  esac
