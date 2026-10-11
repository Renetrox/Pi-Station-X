#!/usr/bin/env python3
"""Import missing PlayStation-X overlay art for Pi-Station-X / EmulationStation-X.

Source: pajarorrojo/es-theme-PlayStation-X (CC BY-NC-SA 4.0).
Images are proportionally downscaled, never stretched; existing files are kept.
"""
import argparse
import io
import pathlib
import urllib.parse
import urllib.request

THEME_ROOT = pathlib.Path(__file__).resolve().parent.parent
TARGET = THEME_ROOT / "_inc" / "collection-overlays"
UPSTREAM = "https://raw.githubusercontent.com/pajarorrojo/es-theme-PlayStation-X"
# Fixed source revision ensures reproducible imports; override with --ref.
SOURCE_REF = "1e4650e78811f9ce76d18303b0bae772e319173e"
ART_DIR = "_theme_inc/images/overlay-arts"

# Names on the left match ES-X gameOverlayMatch's normalized game/ROM titles.
# Duplicate source mappings are intentional aliases, not extra downloads.
OVERLAYS = {
    "finalfantasyxiii": "Final Fantasy XIII.png",
    "xmen": "X-Men.png",
    "donaldduck": "Donald Duck.png",
    "jamesbond007": "james bond 007.png",
    "battletoads": "Battletoads.png",
    "barbie": "barbie.png",
    "alteredbeast": "Altered Beast.png",
    "kirby": "Kirby.png",
    "silenthill": "Silent Hill.png",
    "robotnik": "Robotnik.png",
    "finalfight": "Final fight.png",
    "banjokazooie": "Banjo Kazooie.png",
    "vajrafight": "Vajra Fight.png",
    "hollowknight": "Hollow Knight.png",
    "ranma": "Ranma.png",
    "aleste": "Aleste.png",
    "pentaro": "Pentaro.png",
    "valorant": "Valorant.png",
    "kimetsu": "Kimetsu.png",
    "demonslayer": "Kimetsu.png",
    "gravityrush": "Gravity Rush.png",
    "chronotrigger": "Chrono Trigger.png",
    "spyro": "Spyro.png",
    "parasiteeve": "Parasite Eve.png",
    "digimon": "Digimon.png",
    "arkanoid": "Arkanoid.png",
}

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ref", default=SOURCE_REF, help="Upstream commit SHA or branch")
    parser.add_argument("--source-dir", type=pathlib.Path,
                        help="Read original PNGs from a local directory (offline testing)")
    parser.add_argument("--overwrite", action="store_true", help="Replace existing destination PNGs")
    parser.add_argument("--dry-run", action="store_true", help="List intended additions only")
    args = parser.parse_args()

    pending = [(stem, filename) for stem, filename in OVERLAYS.items()
               if args.overwrite or not (TARGET / (stem + ".png")).exists()]
    print(f"{len(pending)} overlay(s) to import; {len(OVERLAYS) - len(pending)} already present.")
    if not pending or args.dry_run:
        for stem, filename in pending:
            print(f"  {filename} => {stem}.png")
        return

    try:
        from PIL import Image
    except ImportError as exc:
        raise SystemExit("Pillow is required: python3 -m pip install Pillow") from exc

    TARGET.mkdir(parents=True, exist_ok=True)
    cache = {}
    count = 0
    for stem, filename in pending:
        if filename not in cache:
            if args.source_dir:
                data = (args.source_dir / filename).read_bytes()
            else:
                url = (f"{UPSTREAM}/{urllib.parse.quote(args.ref)}/{ART_DIR}/"
                       f"{urllib.parse.quote(filename)}")
                request = urllib.request.Request(url, headers={"User-Agent": "Pi-Station-X-Overlay-Sync"})
                with urllib.request.urlopen(request, timeout=60) as response:
                    data = response.read(20 * 1024 * 1024 + 1)
            if len(data) > 20 * 1024 * 1024 or not data.startswith(b"\x89PNG\r\n\x1a\n"):
                raise ValueError(f"Invalid/oversized PNG: {filename}")

            with Image.open(io.BytesIO(data)) as image:
                image.load()
                if image.format != "PNG":
                    raise ValueError(f"Not a PNG: {filename}")
                if image.mode not in ("RGBA", "RGB"):
                    image = image.convert("RGBA" if "transparency" in image.info or "A" in image.mode else "RGB")
                original = image.size
                image.thumbnail((1280, 720), Image.Resampling.LANCZOS)
                output = io.BytesIO()
                image.save(output, "PNG", optimize=True, compress_level=9)
                cache[filename] = (output.getvalue(), original, image.size)

        result, before, after = cache[filename]
        destination = TARGET / (stem + ".png")
        # Don't truncate existing overlays on download/validation failure.
        temporary = destination.with_suffix(".png.tmp")
        temporary.write_bytes(result)
        temporary.replace(destination)
        count += 1
        print(f"  {destination.name}: {before[0]}x{before[1]} -> "
              f"{after[0]}x{after[1]}, {len(result):,} bytes")
    print(f"Imported {count} overlays from PlayStation-X {args.ref}.")

if __name__ == "__main__":
    main()
