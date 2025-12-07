# Pi-Station-X Theme for RetroPie

**Versión:** 1.0  
**Creado por:** Pajarorrojo  
**Modificado por:** Renetrox (08/2024)  

**Pi-Station-X** es un tema inspirado en la estética de *PlayStation X* de Batocera, adaptado para RetroPie y EmulationStation con ajustes específicos para compatibilidad y personalización.

> ⚠️ **Importante**
>
> - La carpeta del tema debe llamarse **exactamente** `Pi-Station-X`.  
> - En EmulationStation, configura la memoria de caché de imágenes / VRAM a **300 MB o más**, ya que el tema usa muchos recursos HD.  
> - De lo contrario, las imágenes (fondos, logos, artworks) pueden no mostrarse.

---

## Vista previa

<div align="center" style="display: flex; flex-wrap: wrap; gap: 10px; justify-content: center;">
  <img src="https://github.com/Renetrox/Pi-Station-X/blob/main/_inc/vista%20previa/carrusel.png?raw=true" alt="Carrusel de Pi-Station-X" width="320" />
  <img src="https://github.com/user-attachments/assets/5526b439-e518-4153-a9eb-f25a83bd2515" alt="Captura 1" width="240" />
  <img src="https://github.com/user-attachments/assets/40915e2e-3352-4ae6-bbc9-81c74376777f" alt="Captura 2" width="240" />
  <img src="https://github.com/user-attachments/assets/a3cd1336-75a4-4fde-9d1e-d4ad4e02c327" alt="Captura 3" width="240" />
  <img src="https://github.com/user-attachments/assets/7e13d23a-85de-4547-8bdf-fd496173a6f7" alt="Captura 4" width="240" />
  <img src="https://github.com/user-attachments/assets/182ab4bf-8c53-47aa-b94f-176591404fbf" alt="Captura 5" width="240" />
  <img src="https://github.com/user-attachments/assets/5e00107e-0602-4392-9ba3-25e86c87ffb6" alt="Captura 6" width="240" />
  <img src="https://github.com/user-attachments/assets/8bdc431f-1efe-454b-a97a-b32252268caa" alt="Captura 7" width="240" />
  <img src="https://github.com/user-attachments/assets/37c559ec-f20d-4304-89b4-63337ed83c92" alt="Captura 8" width="240" />
</div>

### Demo en video

[![Vista previa Pi-Station-X](https://img.youtube.com/vi/utomzOUJUjk/0.jpg)](https://www.youtube.com/watch?v=utomzOUJUjk)

---

## Características

- 🎮 **Diseño moderno**  
  Inspirado en la interfaz de PlayStation 4, con carrusel horizontal de sistemas al estilo XMB/PlayStation X.

- ✅ **Compatibilidad con RetroPie**  
  Adaptado para EmulationStation de RetroPie.  
  Probado en RPi/Orange Pi con EmulationStation `v2.12.0rp-dev`.

- 🔊 **Sonidos de navegación**  
  Incluye sonidos personalizados para moverse por el menú (donde EmulationStation los soporta).

- ⚙️ **Script de personalización**  
  Incluye un script para configurar y personalizar automáticamente ciertos elementos del tema (colores, vistas, etc.).

---

## Requisitos

- RetroPie instalado en el sistema.
- EmulationStation como frontend.
- Conexión a Internet (solo necesaria si se usa el instalador automático).
- Memoria de caché de imágenes / VRAM en EmulationStation configurada a **≥ 300 MB**.

---

## Instalación

### Opción 1: Instalación automática (recomendada)

1. Clonar el repositorio del instalador en tu RetroPie:

   ```bash
   git clone https://github.com/Renetrox/ps4-inspired-themes-by-renetrox.git
   ```

2. Entrar en la carpeta:

   ```bash
   cd ps4-inspired-themes-by-renetrox
   ```

3. Dar permisos de ejecución (si hace falta):

   ```bash
   chmod +x ps4-inspired-themes-by-renetrox.sh
   ```

4. Ejecutar el script:

   ```bash
   ./ps4-inspired-themes-by-renetrox.sh
   ```

5. Seguir las instrucciones en pantalla. El script:
   - Copiará el tema Pi-Station-X a la carpeta correcta de EmulationStation.
   - Podrá instalar otros temas inspirados en PS4 (si se incluyen).
   - Opcionalmente añadirá el script de personalización al menú de RetroPie.

### Opción 2: Instalación manual

1. Descargar o clonar el repositorio del tema:

   ```bash
   git clone https://github.com/Renetrox/Pi-Station-X.git
   ```

2. Copiar la carpeta del tema a la ruta de temas de EmulationStation:

   ```bash
   mkdir -p /home/[usuario]/.emulationstation/themes/
   cp -r Pi-Station-X /home/[usuario]/.emulationstation/themes/
   ```

   Reemplaza `[usuario]` por tu nombre de usuario real (por ejemplo `pi`, `orangepi`, etc.). La carpeta debe llamarse `Pi-Station-X`.

3. (Opcional) Habilitar la personalización desde el menú de RetroPie copiando el script al menú:

   ```bash
   cp "/home/[usuario]/.emulationstation/themes/Pi-Station-X/layout/PiStation_menu.sh" ~/RetroPie/retropiemenu/
   ```

4. Reiniciar EmulationStation y seleccionar el tema Pi-Station-X desde el menú de apariencia.

Notas de compatibilidad

El tema está pensado para la rama de EmulationStation usada por RetroPie.

Algunas funciones visuales avanzadas (animaciones complejas, efectos de glow dinámico, etc.) pueden diferir respecto a Batocera/ES-DE.

Para evitar problemas de carga de imágenes:

Evita renombrar la carpeta del tema.

Aumenta la caché de imágenes/VRAM a 300 MB o más en las opciones de EmulationStation.

Licencia

Pi-Station-X se distribuye bajo los siguientes términos:

Está permitido:

Compartir y duplicar los archivos tal como están.

Editar, alterar y modificar los archivos según tus necesidades.

Requisitos:

Atribuir crédito al creador original: Pajarorrojo.

Indicar claramente los cambios realizados al tema.

Mantener la misma licencia en las versiones modificadas.

Prohibido:

Cualquier forma de distribución comercial de este tema.

Soporte y sugerencias

Si encuentras errores, tienes ideas de mejora o quieres compartir capturas usando Pi-Station-X:

Abre un issue en el repositorio:
https://github.com/Renetrox/Pi-Station-X

¡Gracias por usar Pi-Station-X! 🎮

Short note in English

Pi-Station-X is a RetroPie/EmulationStation theme inspired by Batocera’s PlayStation X layout.

Make sure the theme folder is named Pi-Station-X.

Increase EmulationStation’s VRAM / Image Cache to 300 MB or more, otherwise high-resolution assets may fail to load.

You can install it either manually (copying the folder into .emulationstation/themes/) or using the provided installer script in
ps4-inspired-themes-by-renetrox.
