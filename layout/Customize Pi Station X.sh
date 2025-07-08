#!/bin/bash

# Título del script en español e inglés
echo "---------------------------------------"
echo "Personalizar 'Pi Station X' / Customize 'Pi Station X'"
echo "---------------------------------------"

# Obtener el directorio del usuario actual
USER_HOME=$(eval echo ~$USER)

# Ruta principal del tema Pi-Station-X
THEME_DIR="$USER_HOME/.emulationstation/themes/Pi-Station-X"

# Rutas
LAYOUT_DIR="$THEME_DIR/layout"
TARGET_SWATCH="$THEME_DIR/Swatch.xml"
TARGET_THEME="$THEME_DIR/theme.xml"
DEFAULT_THEME="$LAYOUT_DIR/dinamic/theme.xml"

# Nombres descriptivos para cada plantilla
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
    ["sonic"]="Sonic"
    ["dinamic"]="Dynamic"
    ["ps3"]="PlayStation 3 (XMB)"
)

# Crear menú con dialog
MENU_OPTIONS=()
for key in "${!TEMPLATES[@]}"; do
    MENU_OPTIONS+=("$key" "${TEMPLATES[$key]}")
done

CHOICE=$(dialog --title "Personalizar 'Pi Station X' / Customize 'Pi Station X'" \
                --menu "Selecciona una plantilla para aplicar: / Select a template to apply:" \
                18 55 10 \
                "${MENU_OPTIONS[@]}" 3>&1 1>&2 2>&3)

# Verificar si se hizo una selección válida
if [[ -n "$CHOICE" ]]; then
    TEMPLATE_KEY=$CHOICE
    echo "---------------------------------------"
    echo "Plantilla seleccionada: ${TEMPLATES[$TEMPLATE_KEY]} / Selected Template: ${TEMPLATES[$TEMPLATE_KEY]}"
    echo "---------------------------------------"

    SWATCH_SRC="$LAYOUT_DIR/$TEMPLATE_KEY/Swatch.xml"

    if [[ -f "$SWATCH_SRC" ]]; then
        cp "$SWATCH_SRC" "$TARGET_SWATCH"

        if [[ "$TEMPLATE_KEY" == "ps3" ]]; then
            THEME_SRC="$LAYOUT_DIR/ps3/theme.xml"
        else
            THEME_SRC="$DEFAULT_THEME"
        fi

        if [[ -f "$THEME_SRC" ]]; then
            cp "$THEME_SRC" "$TARGET_THEME"
        fi

        # Confirmación
        dialog --msgbox "La plantilla '${TEMPLATES[$TEMPLATE_KEY]}' se ha aplicado correctamente. / The '${TEMPLATES[$TEMPLATE_KEY]}' template has been applied successfully." 6 50
        touch "$USER_HOME/.emulationstation/restart"
        dialog --msgbox "Reinicia EmulationStation para que se apliquen los cambios. / Restart EmulationStation to apply changes." 6 50
    else
        dialog --msgbox "Error: No se encontró un archivo Swatch.xml en la plantilla '${TEMPLATES[$TEMPLATE_KEY]}'. / Error: No Swatch.xml found in the '${TEMPLATES[$TEMPLATE_KEY]}' template." 6 50
    fi
else
    dialog --msgbox "Selección inválida. / Invalid selection." 6 50
fi
