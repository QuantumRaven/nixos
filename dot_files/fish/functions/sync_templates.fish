function sync_templates

    set -x SOURCE "/home/quantumcrow/void_sway/template_files/"

    ll "$SOURCE"

    echo -e "\nChoose file: "
    read FILE

    echo -e "\nWhere to sync new file: "
    read DEST

    #    echo -e "\nNew filename: "
    #    read FNAME

    rsync "$SOURCE""$FILE" "$DEST"

end
