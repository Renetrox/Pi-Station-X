#!/bin/bash

# Ruta a la carpeta de imágenes original y a la carpeta de destino
carpeta_imagenes="/home/Reneto/.emulationstation/themes/Pi-Station-X/_inc/background"
carpeta_destino="/home/Reneto/.emulationstation/themes/Pi-Station-X/_inc/background/con texto"

# Crear la carpeta de destino si no existe
mkdir -p "$carpeta_destino"

# Coordenadas y tamaño de texto
x=208
y=1
tamano_texto=36  # Cambiado el nombre de la variable

# Recorre cada archivo de imagen en la carpeta
for imagen in "$carpeta_imagenes"/*; do
    # Verifica que el archivo sea una imagen
    if [[ -f "$imagen" ]]; then
        # Obtiene el nombre del archivo sin la extensión y reemplaza guiones bajos por espacios
        nombre_archivo=$(basename "$imagen")
        texto=${nombre_archivo%.*}
        texto=${texto//_/ }  # Reemplaza guiones bajos con espacios
        
        # Copia la imagen original a la carpeta de destino
        cp "$imagen" "$carpeta_destino/$nombre_archivo"
        
        # Agrega un fondo negro y luego el texto
        convert "$carpeta_destino/$nombre_archivo" \
            -pointsize "$tamano_texto" -fill white \
            -draw "rectangle $((x-5)),$((y-5)) $((x + ${#texto} * 15 + 5)),$((y + tamano_texto + 5))" \
            -fill black -draw "text $x,$y '$texto'" \
            "$carpeta_destino/$nombre_archivo"
    fi
done

echo "Proceso completado. Imágenes guardadas en la carpeta 'con texto'."
