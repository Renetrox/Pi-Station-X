#!/bin/bash

# Título del script en español e inglés
echo "---------------------------------------"
echo "Personalizar 'Pi Station X' / Customize 'Pi Station X'"
echo "---------------------------------------"

# Obtener el directorio del usuario actual
USER_HOME=$(eval echo ~$USER)

# Ruta principal del tema Pi-Station-X (en función del directorio del usuario)
THEME_DIR="$USER_HOME/.emulationstation/themes/Pi-Station-X"

# Ruta donde se almacenan las plantillas
LAYOUT_DIR="$THEME_DIR/layout"

# Ruta del archivo central Swatch.xml
TARGET_SWATCH="$THEME_DIR/Swatch.xml"

# Nombres descriptivos para cada carpeta
declare -A TEMPLATES=(
    ["crash"]="Crash Bandicoot"
    ["GOW"]="God of War"
    ["kirby"]="Kirby"
    ["lara"]="Tomb Raider"
    ["mario"]="Super Mario"
    ["re3"]="Resident Evil 3"
    ["subzero"]="Mortal Kombat"
    ["tm"]="Twisted Metal"
    ["pkn"]="Pokémon"
    ["sonic"]="sonic"
    ["dinamic"]="Dynamic"
)

# Crear el menú con dialog mostrando solo los nombres descriptivos
MENU_OPTIONS=()
for key in "${!TEMPLATES[@]}"; do
    MENU_OPTIONS+=("$key" "${TEMPLATES[$key]}")
done

CHOICE=$(dialog --title "Personalizar 'Pi Station X' / Customize 'Pi Station X'" \
                --menu "Selecciona una plantilla para aplicar: / Select a template to apply:" \
                15 50 8 \
                "${MENU_OPTIONS[@]}" 3>&1 1>&2 2>&3)

# Verificar si se hizo una selección válida
if [[ -n "$CHOICE" ]]; then
    TEMPLATE_KEY=$CHOICE
    # Título de la acción seleccionada
    echo "---------------------------------------"
    echo "Plantilla seleccionada: ${TEMPLATES[$TEMPLATE_KEY]} / Selected Template: ${TEMPLATES[$TEMPLATE_KEY]}"
    echo "---------------------------------------"

    # Verificar si la carpeta y el archivo Swatch.xml existen
    if [[ -f "$LAYOUT_DIR/$TEMPLATE_KEY/Swatch.xml" ]]; then
        echo "Archivo Swatch.xml encontrado. / Swatch.xml file found."

        # Reemplazar el archivo Swatch.xml en la estructura central
        cp "$LAYOUT_DIR/$TEMPLATE_KEY/Swatch.xml" "$TARGET_SWATCH"
        
        # Confirmar la operación en ambos idiomas
        dialog --msgbox "La plantilla '${TEMPLATES[$TEMPLATE_KEY]}' se ha aplicado correctamente. / The '${TEMPLATES[$TEMPLATE_KEY]}' template has been applied successfully." 6 50

        # Crear el archivo para reiniciar EmulationStation
        touch "$USER_HOME/.emulationstation/restart"
        
        # Mensaje final
        dialog --msgbox "Reinicia EmulationStation para que se apliquen los cambios. / Restart EmulationStation to apply changes." 6 50
    else
        dialog --msgbox "Error: No se encontró un archivo Swatch.xml en la carpeta '${TEMPLATES[$TEMPLATE_KEY]}'. / Error: No Swatch.xml file found in the '${TEMPLATES[$TEMPLATE_KEY]}' folder." 6 50
    fi
else
    dialog --msgbox "Selección inválida. / Invalid selection." 6 50
fi
