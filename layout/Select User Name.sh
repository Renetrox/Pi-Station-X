#!/bin/bash

# Ruta del archivo que contiene el <text> del nombre de usuario
USER_XML="$HOME/.emulationstation/themes/Pi-Station-X/user.xml"

# Verificar que dialog esté instalado
if ! command -v dialog >/dev/null 2>&1; then
    echo "Necesitás instalar 'dialog' (sudo apt install dialog)"
    exit 1
fi

# 1) Pedir nombre de usuario
USERNAME=$(dialog --stdout \
    --inputbox "Escribe tu nombre de usuario:" 8 50 "Renetrox")

# Si cancela o deja vacío, salir sin cambiar nada
if [ $? -ne 0 ] || [ -z "$USERNAME" ]; then
    clear
    echo "Cancelado."
    exit 0
fi

# 2) Actualizar user.xml (solo el nombre)
if [ -f "$USER_XML" ]; then
    sed -i "/<text name=\"customText\"/,/<\/text>/ s|<text>.*</text>|<text>${USERNAME}</text>|" "$USER_XML"
else
    dialog --msgbox "No se encontró el archivo:\n$USER_XML" 8 50
    clear
    exit 1
fi

# Mensaje final
dialog --title "Nombre actualizado" --msgbox \
"Tu nombre de usuario se ha guardado correctamente como:\n\n${USERNAME}\n\nReinicia EmulationStation para ver los cambios." 10 60

clear
exit 0