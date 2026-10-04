#!/usr/bin/env bash

: <<"AUTHOR_NOTES"
Author: Chloe C.
Purpose: Menu template
AUTHOR_NOTES

: <<"HANDLE_TRAPS"
Handle trap function for error handling
HANDLE_TRAPS

set -Eeuo pipefail

handle_err() {
  local s=$?
  echo "$0:${BASH_LINENO[0]} $BASH_COMMAND"
  exit $s
}

trap handle_err ERR

# Uncomment below if script needs to check for sudo perms before running
# To uncomment, remove the : <<"TEXT" and TEXT

: <<"SUDO_REQUIRED"
if [[ "$EUID" = 0 ]]; then
    echo "Already root, running..."
else
    printf "Must run with sudo permissions, exiting...\n"
    sleep 2
    exit 1
fi
SUDO_REQUIRED

# Variables that don't change. Capitalized
APP_DIR="${HOME}/storage/corvidae/app_images"
RELEASE_JSON="$(curl -s "https://api.github.com/repos/imputnet/helium-linux/releases/latest")"

# Extract download URL and asset filename
DOWNLOAD_URL=$(echo "${RELEASE_JSON}" | rg "browser_download_url" | cut -d '"' -f 4 | rg "x86_64\.AppImage$" || true)
FILENAME="$(echo "${DOWNLOAD_URL}" | awk -F'/' '{print $NF}')"

if [[ -z "${DOWNLOAD_URL}" ]] || [[ -z "${FILENAME}" ]];
then
  echo "Error: Could not find latest x86_64 Helium AppImage download URL." >&2
  exit 1
fi

TARGET="${APP_DIR}/${FILENAME}"

# Remove older version of helium appimages
echo "-> Removing older Helium AppImages..."
rm -f "${APP_DIR}"/helium-*.AppImage

echo "-> Downloading new version with aria2 (multi-connection acceleration): ${FILENAME}"
# -x16: up to 16 connections per server, -s16: split download into 16 parts
aria2c -x16 -s16 -d "${APP_DIR}" -o "${FILENAME}" "${DOWNLOAD_URL}"
chmod +x "${TARGET}"

# Create/update a stable symlink for launchers to use
SYMLINK_PATH="${APP_DIR}/helium.AppImage"
ln -sf "${TARGET}" "${SYMLINK_PATH}"

echo "Helium successfully updated to ${TARGET}!"
