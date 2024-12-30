#!/bin/bash

# Ruta donde están las imágenes originales
input_folder="/home/Reneto/.emulationstation/themes/Pi-Station-X/_inc/background/"
# Ruta donde se guardarán las imágenes con texto añadido
output_folder="/home/Reneto/.emulationstation/themes/Pi-Station-X/_inc/system-names/"

# Asegúrate de que la carpeta de salida exista
mkdir -p "${output_folder}"

# Iterar sobre todas las imágenes en la carpeta de entrada
for image in "${input_folder}"*.png; do
    # Comprobar si hay imágenes en la carpeta
    if [[ ! -e "$image" ]]; then
        echo "No se encontraron imágenes en ${input_folder}"
        exit 1
    fi

    # Obtener el nombre del archivo sin la ruta ni la extensión
    filename=$(basename -- "$image")
    name="${filename%.*}"

    # Convertir el nombre del archivo en texto (reemplazar guiones bajos por espacios y mayúsculas)
    text=$(echo "$name" | sed 's/_/ /g' | tr '[:lower:]' '[:upper:]')

    # Definir el nombre de la imagen de salida
    output_image="${output_folder}${filename}"

    # Añadir el texto a la imagen justificado a la izquierda
    convert "${image}" \
        -gravity West \
        -fill white \
        -pointsize 36 \
        -annotate +50+50 "${text}" \
        "${output_image}"
done

echo "Imágenes generadas con texto justificado a la izquierda en ${output_folder}"
