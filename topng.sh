#!/usr/bin/env bash

SRC_DIR="${1:-./_inc/logos}"
DST_DIR="${2:-./_inc/logos_png}"
WIDTH="${3:-1024}"

mkdir -p "$DST_DIR"

mapfile -t SVGS < <(find "$SRC_DIR" -type f -iname "*.svg")

if [ ${#SVGS[@]} -eq 0 ]; then
  echo "No se encontraron SVG"
  exit 1
fi

for svg in "${SVGS[@]}"; do
  rel="${svg#$SRC_DIR/}"
  out="$DST_DIR/${rel%.svg}.png"
  mkdir -p "$(dirname "$out")"

  echo "→ $rel"
  rsvg-convert \
    --keep-aspect-ratio \
    -w "$WIDTH" \
    "$svg" -o "$out"
done

echo "✔ Conversión terminada (rsvg)"
