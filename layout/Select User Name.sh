#!/bin/bash

# Ruta base del tema (ajustá si es otra)
THEME_DIR="/home/Reneto/.emulationstation/themes/Pi-Station-X"
AVATAR_DIR="$THEME_DIR/_inc/avatars"
USER_XML="$THEME_DIR/user.xml"
AVATAR_XML="$THEME_DIR/avatar.xml"

# Verificar que dialog esté instalado
if ! command -v dialog >/dev/null 2>&1; then
    echo "Necesitás instalar 'dialog' (sudo apt install dialog)"
    exit 1
fi

# 1) Pedir nombre de usuario
USERNAME=$(dialog --stdout \
    --inputbox "Escribe tu nombre de usuario:" 8 50 "Renetrox")

# Si cancela, salir
if [ $? -ne 0 ] || [ -z "$USERNAME" ]; then
    clear
    echo "Cancelado."
    exit 0
fi

# 2) Construir menú de avatares
if [ ! -d "$AVATAR_DIR" ]; then
    dialog --msgbox "No se encontró la carpeta de avatares:\n$AVATAR_DIR" 10 60
    clear
    exit 1
fi

OPCIONES=()
for f in "$AVATAR_DIR"/*; do
    [ -f "$f" ] || continue
    base=$(basename "$f")
    OPCIONES+=( "$base" "" )
done

if [ ${#OPCIONES[@]} -eq 0 ]; then
    dialog --msgbox "No se encontraron imágenes en $AVATAR_DIR" 10 60
    clear
    exit 1
fi

AVATAR_FILE=$(dialog --stdout \
    --menu "Elige un avatar:" 15 60 8 \
    "${OPCIONES[@]}")

if [ $? -ne 0 ] || [ -z "$AVATAR_FILE" ]; then
    clear
    echo "Cancelado."
    exit 0
fi

# 3) Actualizar user.xml (nombre)
if [ -f "$USER_XML" ]; then
    # Reemplaza solo la línea <text>...</text> dentro del bloque customText
    sed -i "/<text name=\"customText\"/,/<\/text>/ s|<text>.*</text>|<text>${USERNAME}</text>|" "$USER_XML"
else
    dialog --msgbox "No se encontró $USER_XML" 8 50
fi

# 4) Actualizar avatar.xml (imagen)
if [ -f "$AVATAR_XML" ]; then
    # Ruta relativa que usa tu tema
    NEW_PATH="./_inc/avatars/${AVATAR_FILE}"
    sed -i "/<image name=\"background5\"/,/<\/image>/ s|<path>.*</path>|<path>${NEW_PATH}</path>|" "$AVATAR_XML"
else
    dialog --msgbox "No se encontró $AVATAR_XML" 8 50
fi

clear
echo "Perfil actualizado:"
echo "  Usuario: ${USERNAME}"
echo "  Avatar : ${AVATAR_FILE}"
echo
echo "Reinicia EmulationStation para ver los cambios si aún no se reflejan."
