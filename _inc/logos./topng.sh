#!/usr/bin/env bash
set -euo pipefail

# Uso:
#   ./svg2png.sh [carpeta_entrada] [carpeta_salida] [tamaño_px]
# Ej:
#   ./svg2png.sh ./_inc/logos ./_inc/logos_png 1024
SRC_DIR="${1:-./_inc/logos}"
DST_DIR="${2:-./_inc/logos_png}"
SIZE="${3:-1024}"

echo "SRC_DIR: $SRC_DIR"
echo "DST_DIR: $DST_DIR"
echo "SIZE: $SIZE"

if [[ ! -d "$SRC_DIR" ]]; then
  echo "ERROR: No existe la carpeta de entrada: $SRC_DIR"
  echo "Tip: ejecuta el script desde la raíz del tema (donde está theme.xml)."
  exit 1
fi

mkdir -p "$DST_DIR"

# Junta SVG recursivos (acepta .svg y .SVG)
mapfile -t SVGS < <(find "$SRC_DIR" -type f \( -iname "*.svg" \) | sort)

if (( ${#SVGS[@]} == 0 )); then
  echo "ERROR: No encontré SVG en $SRC_DIR (ni en subcarpetas)."
  exit 1
fi

echo "Encontrados ${#SVGS[@]} SVG(s)."

# Elegimos herramienta
HAS_INKSCAPE=0
HAS_RSVG=0
command -v inkscape >/dev/null 2>&1 && HAS_INKSCAPE=1
command -v rsvg-convert >/dev/null 2>&1 && HAS_RSVG=1

if (( HAS_INKSCAPE == 0 && HAS_RSVG == 0 )); then
  echo "ERROR: No está instalado ni inkscape ni rsvg-convert."
  echo "Instala uno:"
  echo "  sudo apt install inkscape"
  echo "  sudo apt install librsvg2-bin"
  exit 1
fi

# Convierte manteniendo subcarpetas relativas dentro de DST_DIR
convert_one () {
  local svg="$1"
  local rel="${svg#$SRC_DIR/}"                 # ruta relativa
  local out="$DST_DIR/${rel%.*}.png"           # cambia extensión
  local outdir
  outdir="$(dirname "$out")"
  mkdir -p "$outdir"

  echo "→ $rel"

  if (( HAS_INKSCAPE == 1 )); then
    # Inkscape nuevo (1.x)
    if inkscape --help 2>&1 | grep -q -- "--export-type"; then
      inkscape "$svg" --export-type=png --export-filename="$out" -w "$SIZE" -h "$SIZE" >/dev/null
    else
      # Inkscape viejo (0.9x)
      inkscape "$svg" --export-png="$out" --export-width="$SIZE" --export-height="$SIZE" >/dev/null
    fi
  else
    # rsvg-convert
    rsvg-convert -w "$SIZE" -h "$SIZE" "$svg" -o "$out"
  fi
}

COUNT=0
for svg in "${SVGS[@]}"; do
  convert_one "$svg"
  COUNT=$((COUNT+1))
done

echo "✔ Listo. Convertidos: $COUNT PNG(s) en $DST_DIR"
