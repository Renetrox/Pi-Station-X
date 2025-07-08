#!/bin/bash
set -e

# ================================
# Configuración inicial
# ================================
ROMS_DIR="/home/Reneto/RetroPie/roms"
OVERLAYS_DIR="/home/Reneto/.emulationstation/themes/Pi-Station-X/_inc/overlay-arts"
COLLECTIONS_DIR="$HOME/.emulationstation/collections"

# Lista de consolas conocidas (minúsculas)
KNOWN_CONSOLES=(
  3do 3ds amiga amiga500 amiga1200 amigacd32 amstradcpc apple2 arcade
  atari8bit atari800 atari2600 atari5200 atari7800 atarijaguar atarilynx atarist
  atomiswave bbcmicro c64 cdi channelf coco colecovision daphne dos dreamcast
  fba fbneo fds fmtowns gameandwatch gamegear gb gba gbc gc gx4000 gzdoom
  intellivision j2me kodi lcdgames macintosh mame mastersystem megadrive mrboom
  msx1 msx2 msx2+ msxturbor mugen n64 n64dd naomi naomi2 nds neogeo neogeocd nes
  ngp ngpc o2em odyssey2 openbor openlara pc pc88 pc98 pce-cd pcengine pcfx pico
  ports prboom ps2 ps3 ps4 psp psvita psx reminiscence retropie samcoupe
  satellaview saturn scummvm sega32x segacd sg-1000 sims singe snes supervision
  switch thomson vectrex virtualboy vsmile wii wiiu wine wonderswancolor x1
  x68000 xbox xbox360 zxspectrum
)

# ================================
# Crear carpeta de colecciones
# ================================
mkdir -p "$COLLECTIONS_DIR"

# ================================
# Procesar overlays que no sean consolas
# ================================
for overlay in "$OVERLAYS_DIR"/*.png; do
  [ -e "$overlay" ] || continue

  keyword=$(basename "$overlay" .png)
  keyword_lower=$(echo "$keyword" | tr '[:upper:]' '[:lower:]')

  # Verificar si keyword coincide con alguna consola conocida
  is_console=false
  for console in "${KNOWN_CONSOLES[@]}"; do
    if [[ "$keyword_lower" == "$console" ]]; then
      is_console=true
      break
    fi
  done

  if [ "$is_console" = false ]; then
    collection_cfg="${COLLECTIONS_DIR}/custom-${keyword_lower}.cfg"
    collection_logo="${COLLECTIONS_DIR}/${keyword_lower}.png"

    echo "🛠️ Generando colección para: $keyword"

    echo "collection: $keyword" > "$collection_cfg"
    echo "name: $keyword" >> "$collection_cfg"
    echo "" >> "$collection_cfg"

    # Buscar solo archivos de roms válidos
    find "$ROMS_DIR" -type f \( \
      -iname "*.zip" -o -iname "*.7z" -o -iname "*.iso" -o -iname "*.bin" -o \
      -iname "*.cue" -o -iname "*.img" -o -iname "*.chd" -o -iname "*.nes" -o \
      -iname "*.sfc" -o -iname "*.smc" -o -iname "*.gba" -o -iname "*.gb" -o \
      -iname "*.gbc" -o -iname "*.n64" -o -iname "*.z64" -o -iname "*.v64" \
    \) | while read -r rom; do
      rom_base=$(basename "$rom" | tr '[:upper:]' '[:lower:]')
      if [[ "$rom_base" == *"$keyword_lower"* ]]; then
        echo "file: $rom" >> "$collection_cfg"
      fi
    done

    # Copiar el overlay como logo de la colección
    cp "$overlay" "$collection_logo"
    echo "✅ Colección '${keyword}' creada con logo en: ${collection_logo}"
  else
    echo "⏭️ Omitiendo consola conocida: $keyword"
  fi
done

echo "🎉 Colecciones generadas SOLO para overlays que no son consolas."
