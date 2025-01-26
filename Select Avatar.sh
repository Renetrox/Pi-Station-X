#!/bin/bash

# Directorio base del tema (ruta relativa)
theme_dir="./_inc/avatars"
avatar_xml="./avatar.xml"

# Obtener la lista de avatares (archivos .png)
avatar_files=($(ls "$theme_dir"/*.png))

# Crear el menú de selección de avatar
avatar_choice=$(dialog --title "Select Avatar" \
--menu "Choose your avatar" 15 50 10 \
$(for file in "${avatar_files[@]}"; do
    echo "$(basename "$file") -"
done) 2>&1 >/dev/tty)

# Verificar si el usuario seleccionó un avatar
if [ -n "$avatar_choice" ]; then
    # Obtener el nombre del avatar seleccionado
    selected_avatar=$(basename "$avatar_choice")

    # Modificar el archivo avatar.xml con la ruta relativa
    sed -i "s|<path>.*</path>|<path>./_inc/avatars/$selected_avatar</path>|" "$avatar_xml"

    # Mostrar un mensaje en inglés y español
    dialog --title "Changes Applied" --msgbox \
    "Changes have been applied successfully.\n\nPlease restart EmulationStation for the changes to take effect.\n\nLos cambios se han aplicado correctamente.\n\nPor favor reinicia EmulationStation para que los cambios tengan efecto." 10 60
fi

exit 0
