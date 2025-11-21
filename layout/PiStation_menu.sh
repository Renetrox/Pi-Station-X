#!/usr/bin/env bash

# Obtener nombre real del usuario del sistema
user=$(whoami)

# Ruta base (ajustá si cambia)
scriptdir="/home/$user/.emulationstation/themes/Pi-Station-X/layout"

# Scripts disponibles
CUSTOMIZE_SCRIPT="$scriptdir/Customize Pi Station X.sh"
SELECT_AVATAR_SCRIPT="$scriptdir/Select Avatar.sh"
SELECT_USERNAME_SCRIPT="$scriptdir/Select User Name.sh"

# Mensajes (Español / Inglés)
MSG_TITLE="Pi Station X Customization Menu"
MSG_OPTION_1="Customize Pi Station X"
MSG_OPTION_2="Select Avatar"
MSG_OPTION_3="Edit User Name"
MSG_OPTION_4="Exit"
MSG_CUSTOMIZE_ERROR="The customization script is not found in the path."
MSG_AVATAR_ERROR="The avatar selection script is not found in the path."
MSG_USERNAME_ERROR="The username edit script is not found in the path."

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

# Idiomas
select_language() {
    LANG=$(dialog --clear \
        --title "Select Language / Selecciona el idioma" \
        --menu "Choose a language / Elige un idioma:" 15 50 2 \
        1 "English" \
        2 "Español" \
        2>&1 >/dev/tty)

    case $LANG in
        1)
            MSG_TITLE="Pi Station X Customization Menu"
            MSG_OPTION_1="Customize Pi Station X"
            MSG_OPTION_2="Select Avatar"
            MSG_OPTION_3="Edit User Name"
            MSG_OPTION_4="Exit"
            MSG_CUSTOMIZE_ERROR="The customization script is not found."
            MSG_AVATAR_ERROR="The avatar selection script is not found."
            MSG_USERNAME_ERROR="The user name script is not found."
            ;;
        2)
            MSG_TITLE="Menú de Personalización de Pi Station X"
            MSG_OPTION_1="Personalizar Pi Station X"
            MSG_OPTION_2="Seleccionar Avatar"
            MSG_OPTION_3="Editar Nombre de Usuario"
            MSG_OPTION_4="Salir"
            MSG_CUSTOMIZE_ERROR="No se encontró el script de personalización."
            MSG_AVATAR_ERROR="No se encontró el script de selección de avatar."
            MSG_USERNAME_ERROR="No se encontró el script de edición de nombre."
            ;;
    esac
}

# Menú principal
show_menu() {
    choice=$(dialog --clear \
        --title "$MSG_TITLE" \
        --menu "Select an option / Selecciona una opción:" 15 55 4 \
        1 "$MSG_OPTION_1" \
        2 "$MSG_OPTION_2" \
        3 "$MSG_OPTION_3" \
        4 "$MSG_OPTION_4" \
        2>&1 >/dev/tty)

    case $choice in
        1) customize_theme ;;
        2) select_avatar ;;
        3) select_username ;;
        4) clear; exit 0 ;;
        *) dialog --msgbox "Invalid option." 10 50 ;;
    esac
}

# Ejecutar
select_language
show_menu
