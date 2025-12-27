#!/bin/bash

# Ruta de la carpeta con imágenes
INPUT_DIR="/home/Reneto/.emulationstation/themes/Pi-Station-X/_inc/background/"
OUTPUT_DIR="/home/Reneto/.emulationstation/themes/Pi-Station-X/_inc/background_con_filtro/"

# Crear la carpeta de salida si no existe
mkdir -p "$OUTPUT_DIR"

# Aplicar el filtro oscuro a cada imagen en la carpeta
for IMAGE in "$INPUT_DIR"/*.{jpg,jpeg,png}; do
    [ -e "$IMAGE" ] || continue
    BASENAME=$(basename "$IMAGE")
    OUTPUT_IMAGE="$OUTPUT_DIR/$BASENAME"

    # Aplicar el filtro oscuro (transparencia del 50%)
    convert "$IMAGE" -fill black -colorize 50% "$OUTPUT_IMAGE"
done

echo "Filtro oscuro aplicado a todas las imágenes en $OUTPUT_DIR"
