#!/usr/bin/env bash

THEME_DIR="/home/$USER/.emulationstation/themes/Pi-Station-X"

OPTION=$(dialog --clear --backtitle "Pi-Station-X" \
  --title "Idioma del botón START" \
  --menu "Elige el idioma:" 15 60 6 \
  1 "Español (Iniciar)" \
  2 "Inglés (Start)" \
  3 "Portugués (Iniciar)" \
  2>&1 >/dev/tty)

clear

case "$OPTION" in
  1)
    cp "$THEME_DIR/_inc/start/es/start.xml" "$THEME_DIR/start.xml"
    ;;
  2)
    cp "$THEME_DIR/_inc/start/en/start.xml" "$THEME_DIR/start.xml"
    ;;
  3)
    cp "$THEME_DIR/_inc/start/pt/start.xml" "$THEME_DIR/start.xml"
    ;;
  *)
    exit 0
    ;;
esac

echo "Botón actualizado correctamente."

