#!/bin/bash
backup_dir="../overlay-arts-backup-$(date +%Y%m%d%H%M%S)"
mkdir -p "$backup_dir"

echo "Copiando archivos originales a: $backup_dir"
cp -av -- * "$backup_dir/"

for f in *; do
  # Solo procesa archivos regulares, ignora carpetas
  if [ -f "$f" ]; then
    # Construye el nuevo nombre: minúsculas, guiones bajos, sin signos
    new=$(echo "$f" | tr 'A-Z' 'a-z' | tr ' ' '_' | tr -d '\"!\?\&\(\)\[\]\{\}\:\;\'')
    if [ "$f" != "$new" ]; then
      echo "Renombrando: '$f' → '$new'"
      mv -v "$f" "$new"
    fi
  fi
done

echo "¡Renombrado completado!"
