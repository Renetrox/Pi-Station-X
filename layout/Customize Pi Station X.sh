#!/usr/bin/env bash
# Pi-Station-X classic layout selector.
# Uses the same layout template folders as the native ES-X theme.ini selector.
set -euo pipefail

THEME_DIR="${HOME}/.emulationstation/themes/Pi-Station-X"
LAYOUT_DIR="$THEME_DIR/layout"

if ! command -v dialog >/dev/null 2>&1; then
    echo "Error: 'dialog' is required for the classic layout selector." >&2
    exit 1
fi

declare -A LABELS=(
    [dinamic]="PS4 (Overlay-art)"
    [ps3]="PS3 (XMB)"
    ["ps4 simple"]="PS4 (Simple)"
    ["ps4-carrousel gamelist"]="PS4 (Carousel Gamelist)"
    ["ps4-fake-carrousel"]="PS4 (Fake Carousel)"
    [ps5]="PS5"
)

MENU_OPTIONS=()
for dir in "$LAYOUT_DIR"/*; do
    [[ -d "$dir" && -f "$dir/Swatch.xml" && -f "$dir/theme.xml" ]] || continue
    id="${dir##*/}"
    MENU_OPTIONS+=("$id" "${LABELS[$id]:-$id}")
done

if (( ${#MENU_OPTIONS[@]} == 0 )); then
    dialog --msgbox "No se encontraron layouts válidos. / No valid layouts found." 7 60
    exit 1
fi

if ! selected=$(dialog --clear \
    --title "Personalizar Pi-Station-X / Customize Pi-Station-X" \
    --menu "Selecciona un diseño / Select a layout" \
    18 70 10 "${MENU_OPTIONS[@]}" 3>&1 1>&2 2>&3); then
    exit 0
fi

[[ -n "$selected" ]] || exit 0
source_dir="$LAYOUT_DIR/$selected"

# Copy only the selected layout entry points. Preserve user/avatar/start
# customizations already present in the installed theme.
for file in theme.xml Swatch.xml; do
    [[ -f "$source_dir/$file" ]] || {
        dialog --msgbox "Falta / Missing: $selected/$file" 7 65
        exit 1
    }
done

stamp=$(date +%Y%m%d-%H%M%S)
for file in theme.xml Swatch.xml; do
    [[ -f "$THEME_DIR/$file" ]] && cp -p -- "$THEME_DIR/$file" "$THEME_DIR/$file.bak-$stamp"
    cp -- "$source_dir/$file" "$THEME_DIR/$file"
done

# Keep the classic script and the native ES-X theme-layout menu in sync.
ini="$THEME_DIR/theme.ini"
if [[ -f "$ini" ]]; then
    sed -i -E "s/^LAYOUT[[:space:]]*=.*/LAYOUT=$selected/" "$ini"
fi

touch "$HOME/.emulationstation/restart"
dialog --msgbox "Diseño aplicado / Layout applied: $selected\nReinicia EmulationStation / Restart EmulationStation." 9 70
