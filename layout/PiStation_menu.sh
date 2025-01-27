#!/usr/bin/env bash

# Definir el nombre de usuario
user=$(whoami)

# Definir las rutas absolutas para los scripts y directorios
scriptdir="/home/$user/.emulationstation/themes/Pi-Station-X/layout"
CUSTOMIZE_SCRIPT="$scriptdir/Customize Pi Station X.sh"
SELECT_AVATAR_SCRIPT="$scriptdir/Select Avatar.sh"
AVATAR_DIR="$scriptdir/avatars"

# Mensajes de personalización
MSG_TITLE="Pi Station X Customization Menu"
MSG_OPTION_1="Customize Pi Station X"
MSG_OPTION_2="Select Avatar"
MSG_OPTION_3="Exit"
MSG_CUSTOMIZE_ERROR="The customization script is not found in the path."
MSG_AVATAR_ERROR="The avatar selection script is not found in the path."

# Función para ejecutar el script de personalización del tema
customize_theme() {
    if [[ -f "$CUSTOMIZE_SCRIPT" ]]; then
        bash "$CUSTOMIZE_SCRIPT"
    else
        dialog --msgbox "$MSG_CUSTOMIZE_ERROR" 10 50
    fi
}

# Función para ejecutar el script de selección de avatar
select_avatar() {
    # Verificar si el script de selección de avatar existe
    if [[ -f "$SELECT_AVATAR_SCRIPT" ]]; then
        bash "$SELECT_AVATAR_SCRIPT"
    else
        dialog --msgbox "$MSG_AVATAR_ERROR" 10 50
    fi
}

# Función para seleccionar idioma
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
            MSG_OPTION_3="Exit"
            MSG_CUSTOMIZE_ERROR="The customization script is not found in the path."
            MSG_AVATAR_ERROR="The avatar selection script is not found in the path."
            ;;
        2)
            MSG_TITLE="Menú de Personalización de Pi Station X"
            MSG_OPTION_1="Personalizar Pi Station X"
            MSG_OPTION_2="Seleccionar Avatar"
            MSG_OPTION_3="Salir"
            MSG_CUSTOMIZE_ERROR="El script de personalización no se encuentra en la ruta."
            MSG_AVATAR_ERROR="El script de selección de avatar no se encuentra en la ruta."
            ;;
        *)
            dialog --msgbox "Invalid option. Exiting..." 10 50
            exit 1
            ;;
    esac
}

# Función para mostrar el menú de dialog
show_menu() {
    choice=$(dialog --clear \
                    --title "$MSG_TITLE" \
                    --menu "Select an option / Selecciona una opción:" 15 50 3 \
                    1 "$MSG_OPTION_1" \
                    2 "$MSG_OPTION_2" \
                    3 "$MSG_OPTION_3" \
                    2>&1 >/dev/tty)

    case $choice in
        1)
            customize_theme
            ;;
        2)
            select_avatar
            ;;
        3)
            clear
            exit 0
            ;;
        *)
            dialog --msgbox "Invalid option. Try again / Opción no válida. Intenta de nuevo." 10 50
            show_menu
            ;;
    esac
}

# Iniciar selección de idioma
select_language

# Ejecutar el menú
show_menu
