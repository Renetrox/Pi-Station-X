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

# Crear menú con dialog (ordenado alfabéticamente por clave)
MENU_OPTIONS=()
for key in "${!TEMPLATES[@]}"; do
    MENU_OPTIONS+=("$key" "${TEMPLATES[$key]}")
done

CHOICE=$(dialog --clear --title "Personalizar 'Pi Station X' / Customize 'Pi Station X'"                 --menu "Selecciona una plantilla para aplicar: / Select a template to apply:"                 20 60 12                 "${MENU_OPTIONS[@]}" 3>&1 1>&2 2>&3)

# Verificar si se hizo una selección válida
if [[ -n "$CHOICE" ]]; then
    TEMPLATE_KEY="$CHOICE"
    SELECTED_TEMPLATE="${TEMPLATES[$TEMPLATE_KEY]}"
    echo "---------------------------------------"
    echo "Plantilla seleccionada: $SELECTED_TEMPLATE / Selected Template: $SELECTED_TEMPLATE"
    echo "---------------------------------------"

    SWATCH_SRC="$LAYOUT_DIR/$TEMPLATE_KEY/Swatch.xml"
    [[ ! -f "$SWATCH_SRC" ]] && SWATCH_SRC="$LAYOUT_DIR/GOW/Swatch.xml"

    # Determinar el theme.xml según la plantilla
    case "$TEMPLATE_KEY" in
        "dinamic")
            THEME_SRC="$LAYOUT_DIR/dinamic/theme.xml"
            ;;
        "ps3")
            THEME_SRC="$LAYOUT_DIR/ps3/theme.xml"
            ;;
        *)
            THEME_SRC="$LAYOUT_DIR/GOW/theme.xml"
            ;;
    esac

    # Verificación y copiado
    if [[ -f "$THEME_SRC" ]]; then
        cp "$THEME_SRC" "$TARGET_THEME"
        cp "$SWATCH_SRC" "$TARGET_SWATCH"

        dialog --msgbox "La plantilla '$SELECTED_TEMPLATE' se ha aplicado correctamente. / The '$SELECTED_TEMPLATE' template has been applied successfully." 6 60
        touch "$USER_HOME/.emulationstation/restart"
        dialog --msgbox "Reinicia EmulationStation para que se apliquen los cambios. / Restart EmulationStation to apply changes." 6 60
    else
        dialog --msgbox "Error: No se encontró theme.xml para la plantilla '$SELECTED_TEMPLATE'. / theme.xml not found for '$SELECTED_TEMPLATE'" 6 60
    fi
else
    dialog --msgbox "Selección inválida. / Invalid selection." 6 50
fi
