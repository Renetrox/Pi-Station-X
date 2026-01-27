#!/bin/bash
set -e

SRC_DIR="/home/Reneto/.emulationstation/themes/Pi-Station-X/_inc/background"
BACKUP_DIR="$SRC_DIR/_backup_originals"

MAX_RES="1280x720"
QUALITY=85

mkdir -p "$BACKUP_DIR"

# Detectar ImageMagick 7 (magick) o 6 (convert)
if command -v magick >/dev/null 2>&1; then
  IM_CMD="magick"
elif command -v convert >/dev/null 2>&1; then
  IM_CMD="convert"
else
  echo "ERROR: No se encontró ImageMagick (magick/convert)."
  echo "Instalá con: sudo apt update && sudo apt install imagemagick"
  exit 1
fi

echo "Usando: $IM_CMD"
echo "Carpeta: $SRC_DIR"
echo

find "$SRC_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" \) | while read -r IMG; do
    FILE="$(basename "$IMG")"
    BACKUP="$BACKUP_DIR/$FILE"

    # Backup solo una vez
    if [ ! -f "$BACKUP" ]; then
        cp "$IMG" "$BACKUP"
    fi

    echo "Procesando: $FILE"

    "$IM_CMD" "$IMG" \
        -resize "${MAX_RES}>" \
        -strip \
        -sampling-factor 4:2:0 \
        -interlace Plane \
        -quality $QUALITY \
        "$IMG"
done

echo
echo "Listo. Backups en: $BACKUP_DIR"
