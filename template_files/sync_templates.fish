function sync_templates

    set -x SOURCE "/home/quantumcrow/dev/template_files/"

    ll "$SOURCE"

    echo -e "\nChoose file: "
    read FILE

    echo -e "\nWhere to sync file: "
    read DEST

    echo -e "\nNew filename: "
    read FNAME

    rsync "$SOURCE""$FILE" "$DEST""$FNAME"

end
