# format:
# [custom-collection]:"game1;game2;case-insensitive;supports spaces;etc"
typeset -A GAMES=(
    [batman]="batman"
    [castlevania]="castlevania"
    [donkeykong]="donkey kong;donkeykong"
    [dragonball]="dragon ball;dragonball"
    [godofwar]="god of war;godofwar"
    [finalfantasy]="final fantasy;finalfantasy;ff"
    [mario]="mario;super mario"
    [megaman]="mega man;megaman;rockman"
    [metalgear]="metal gear;metalgear"
    [metalslug]="metal slug;metalslug;mslug"
    [metroid]="metroid;super metroid"
    [mortalkombat]="mortal kombat;mortalkombat;mk"
    [pacman]="pacman;pac-man"
    [residentevil]="resident evil;residentevil;biohazard"
    [sonic]="sonic the hedgehog;sonic and knuckles;sonic & knuckles"
    [spiderman]="spider-man;spiderman"
    [starwars]="star wars;starwars"
    [streetfighter]="street fighter;sf;sf2;sfii;ssf"
    [tetris]="tetris"
    [zelda]="zelda;the legend of zelda;legend of zelda;tloz;link's awakening"
)

VALID_EXTENSIONS="zip|ZIP|7z|7Z|chd|CHD|cdi|CDI|gdi|GDI|iso|ISO|cue|CUE|rar|RAR|smc|SMC|sfc|SFC|gb|GB|gba|gb|pbp|nes|sms|SMS|snes|smd|gbc|exe|sh|SH|pak|jar"

COLLECTIONS="$(ls -1 ./)"
COLLECTIONS="${COLLECTIONS}"

ES_COLLECTIONS_PATH="$HOME/.emulationstation/collections"

INSTALLED_SYSTEMS="$(ls -1 /opt/retropie/configs)"
INSTALLED_SYSTEMS="${INSTALLED_SYSTEMS/all/}"
ROMS_PATH="$HOME/RetroPie/roms"

shopt -s nocasematch

force_delete=false
list_only=false
collection_name=false
while getopts ':fln:' OPTION; do
    case "$OPTION" in
        f) echo "FORCE DELETE: on"
            force_delete=true ;;
        l) echo "List supported custom collections"
            rm "./SUPPORTED_CUSTOM_COLLECTIONS.txt"
            list_only=true ;;
        n)
            collection_name=$OPTARG ;;
        ?) echo "Script usage: .bin/$(basename $0) -[f][l][n <name>]" >&2
            exit 1 ;;
    esac
done

if ! [[ $collection_name == false ]]; then
    if ! [[ -v $GAMES[$collection_name] ]]; then
        echo "Found: $collection_name"
        collection_games="${GAMES[$collection_name]}"
        GAMES=(["$collection_name"]="$collection_games")
    fi
fi

for collection in "${!GAMES[@]}"; do
    IFS=';'
    filenames="${GAMES[$collection]}"
    filenames=($filenames)
    unset IFS
    collected=()
    name="custom-${collection}.cfg"

    if $list_only; then
        echo "$collection"
        collected+=($collection)
        printf "%s\n" "${collection}" >> "./SUPPORTED_CUSTOM_COLLECTIONS.txt"
        continue
    fi

    if $force_delete; then
        if [[ -f "${ES_COLLECTIONS_PATH}/${name}" ]]; then
            echo "Deleting file $name"
            rm -r "${ES_COLLECTIONS_PATH}/${name}"
        fi
    fi

    echo "Scanning collection: $collection"

    if [[ -f "${ES_COLLECTIONS_PATH}/${name}" ]]; then
        echo "SKIPPING $collection: Custom collection $name already exists."
        echo "-----------------"
        continue
    fi

    for filename in "${filenames[@]}"; do
        IFS=$'\n'
        filename="${filename}"

        for system in $INSTALLED_SYSTEMS; do
            if ! [[ -d $ROMS_PATH/${system} ]]; then
                continue
            fi

            results="$(ls -1 $ROMS_PATH/${system})"

            for file in $results; do
                if [[ $file = $filename* ]]; then
                    if ! [[ $file =~ .*\.($VALID_EXTENSIONS)$ ]]; then
                        echo "✘ SKIPPING: Unknown file extension for $file";
                        continue
                    fi

                    echo "✓ FOUND MATCH: [$system] $ROMS_PATH/${system}/$file"
                    file=$ROMS_PATH/${system}/$file

                    if ! [[ -f $file ]]; then
                        continue
                    fi

                    collected+=($file)
                fi
            done
        done
        unset IFS
    done

    if ! [ -z "$collected" ]; then
        echo "Adding entries to $ES_COLLECTIONS_PATH/$name"
        printf "%s\n" "${collected[@]}" > "$ES_COLLECTIONS_PATH/$name"
    else
        echo "No games collected for $collection"
    fi
    echo "-----------------"
done

echo "
Done."
