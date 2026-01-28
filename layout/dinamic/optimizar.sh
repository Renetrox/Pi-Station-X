#!/bin/bash
set -e

DIR="/home/Reneto/.emulationstation/themes/Pi-Station-X/layout/dinamic"
BACKUP="$DIR/_backup_png"
MAX_RES="1280x720"

mkdir -p "$BACKUP"

command -v convert >/dev/null || { echo "ERROR: falta ImageMagick (convert)"; exit 1; }
command -v optipng >/dev/null || { echo "ERROR: falta optipng"; exit 1; }

find "$DIR" -maxdepth 1 -type f -iname "*.png" | while read -r IMG; do
  FILE="$(basename "$IMG")"

  # backup 1 vez
  [ -f "$BACKUP/$FILE" ] || cp "$IMG" "$BACKUP/$FILE"

  echo "Procesando: $FILE"

  # resize SOLO si excede
  convert "$IMG" -resize "${MAX_RES}>" "$IMG"

  # optimización sin pérdida (o2 suele ser el mejor equilibrio)
  optipng -o2 "$IMG" >/dev/null
done

echo "✔ PNG optimizados. Backup en: $BACKUP"
