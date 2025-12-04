#!/usr/bin/env bash

# Obtener nombre real del usuario del sistema
user=$(whoami)

# Ruta base
scriptdir="/home/$user/.emulationstation/themes/Pi-Station-X/layout"

# Scripts disponibles
CUSTOMIZE_SCRIPT="$scriptdir/Customize Pi Station X.sh"
SELECT_AVATAR_SCRIPT="$scriptdir/Select Avatar.sh"
SELECT_USERNAME_SCRIPT="$scriptdir/Select User Name.sh"
SELECT_START_SCRIPT="$scriptdir/select start.sh"   # ← NUEVO SCRIPT

# Mensajes (Español / Inglés)
MSG_TITLE="Pi Station X Customization Menu"
MSG_OPTION_1="Customize Pi Station X"
MSG_OPTION_2="Select Avatar"
MSG_OPTION_3="Edit User Name"
MSG_OPTION_4="Select Start Button"    # ← NUEVA OPCIÓN
MSG_OPTION_5="Exit"

MSG_CUSTOMIZE_ERROR="The customization script is not found."
MSG_AVATAR_ERROR="The avatar selection script is not found."
MSG_USERNAME_ERROR="The username edit script is not found."
MSG_START_ERROR="The Start Button script is not found."   # ← NUEVO

# Ejecutar scripts correspondientes
customize_theme() {
    [[ -f "$CUSTOMIZE_SCRIPT" ]] && bash "$CUSTOMIZE_SCRIPT" \
    || dialog --msgbox "$MSG_CUSTOMIZE_ERROR" 10 50
}

select_avatar() {
    [[ -f "$SELECT_AVATAR_SCRIPT" ]] && bash "$SELECT_AVATAR_SCRIPT" \
    || dialog --msgbox "$MSG_AVATAR_ERROR" 10 50
}

select_username() {
    [[ -f "$SELECT_USERNAME_SCRIPT" ]] && bash "$SELECT_USERNAME_SCRIPT" \
    || dialog --msgbox "$MSG_USERNAME_ERROR" 10 50
}

select_start_button() {
    [[ -f "$SELECT_START_SCRIPT" ]] && bash "$SELECT_START_SCRIPT" \
    || dialog --msgbox "$MSG_START_ERROR" 10 50
}

# Menú principal
show_menu() {
    choice=$(dialog --clear \
        --title "$MSG_TITLE" \
        --menu "Select an option:" 15 55 5 \
        1 "$MSG_OPTION_1" \
        2 "$MSG_OPTION_2" \
        3 "$MSG_OPTION_3" \
        4 "$MSG_OPTION_4" \
        5 "$MSG_OPTION_5" \
        2>&1 >/dev/tty)

    case $choice in
        1) customize_theme ;;
        2) select_avatar ;;
        3) select_username ;;
        4) select_start_button ;;    # ← Habilita tu script
        5) clear; exit 0 ;;
        *) dialog --msgbox "Invalid option." 10 50 ;;
    esac
}

# Ejecutar directamente el menú principal (sin pedir idioma por ahora)
show_menu
