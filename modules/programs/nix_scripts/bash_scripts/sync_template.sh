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

# Fallback if TEMPLATE_FILES isn't injected by Nix (e.g. non-NixOS hosts)
if [[ -z "${TEMPLATE_FILES:-}" ]];
then
  current_host="$(hostname -s 2>dev/null || hostname)"

  if [[ "${current_host}" == "void" ]];
  then
      TEMPLATE_FILES="${HOME}/storage/corvidae/workspace/github/quantumraven/template-files"
  elif [[ "${current_host}" == "andromeda" ]];
  then
      TEMPLATE_FILES="${HOME}/workspace/github/quantumraven/template-files"
  else
      # Generic fallback or interactive prompt for unknown/non-Nix hosts
      echo "Notice: Unknown host '${current_host}'. Using default template path."
      TEMPLATE_FILES="${HOME}/workspace/github/quantumraven/template-files"
  fi
fi

# Define options and their actions together
# Adding an option = one entry in each array, plus a function. No case branches.
options=(
    "Bash: base_template.sh"
    "Bash: menu_template.sh"
    "C: main.c"
    "Caddy: caddyfile"
    "Nginx: server_template.conf"
    "Nginx: sub_domain_template.conf"
    "Nix: AppImage Package"
    "Nix: Binary Package"
    "Nix Template: Python Dev Environment"
    "Nix Template: React/Node Dev Environment"
    "Nix Template: Rust Dev Environment"
    "Web: Whole Directory"
)

actions=(
    bash_base
    bash_menu
    c_lang
    caddyfile
    nginx_server
    nginx_sub_domain
    nix_appimage_pkg
    nix_binary_pkg
    nix_python_template
    nix_react_template
    nix_rust_template
    web_dir
)

# Helper function to check rsync status
check_success() {
    if [[ $? -eq 0 ]];
    then
        echo "✓ Successfully synchronized to: $1"
    else
        echo "✗ Error: Failed to synchronize templates." >&2
        return 1
    fi
}

# Menu fuctions
bash_base() {
    local new_name
    read -rep "New file name: " new_name
    echo "-> Scaffolding Bash base template into ./${new_name}..."
    rsync -avhzP "${TEMPLATE_FILES}/bash/base_template.sh" ./"${new_name}"
    check_success "./${new_name}"
}
bash_menu() {
    local new_name
    read -rep "New file name: " new_name
    echo "-> Scaffolding Bash menu template into ./${new_name}..."
    rsync -avhzP "${TEMPLATE_FILES}/bash/menu_template.sh" ./"${new_name}"
    check_success "./${new_name}"
}

c_lang() {
    local new_name
    read -rep "New file name: " new_name
    echo "-> Scaffolding C source template into ./${new_name}..."
    rsync -avhzP "${TEMPLATE_FILES}/c/main.c" ./"${new_name}"
    check_success "./${new_name}"
}

caddyfile() {
    local new_name
    read -rep "New file name: " new_name
    echo "-> Scaffolding Caddyfile into ./${new_name}..."
    rsync -avhzP "${TEMPLATE_FILES}/caddy/caddyfile" ./"${new_name}"
    check_success "./${new_name}"
}

nginx_server() {
    local new_name
    read -rep "New file name: " new_name
    echo "-> Scaffolding Nginx server config into ./${new_name}..."
    rsync -avhzP "${TEMPLATE_FILES}/nginx/nginx_server.conf" ./"${new_name}"
    check_success "./${new_name}"
}

nginx_sub_domain() {
    local new_name
    read -rep "New file name: " new_name
    rsync -avhzP "${TEMPLATE_FILES}/nginx/nginx_sub_domain.conf" ./"${new_name}"
}

nginx_sub_domain() {
    local new_name
    read -rep "New file name: " new_name
    echo "-> Scaffolding Nginx subdomain config into ./${new_name}..."
    rsync -avhzP "${TEMPLATE_FILES}/nginx/nginx_sub_domain.conf" ./"${new_name}"
    check_success "./${new_name}"
}

nix_appimage_pkg() {
    local new_name
    read -rep "New file name: " new_name
    echo "-> Scaffolding Nix AppImage package template into ./${new_name}..."
    rsync -avhzP "${TEMPLATE_FILES}/nix/appimage_template.nix" ./"${new_name}"
    check_success "./${new_name}"
}

nix_binary_pkg() {
    local new_name
    read -rep "New file name: " new_name
    echo "-> Scaffolding Nix Binary package template into ./${new_name}..."
    rsync -avhzP "${TEMPLATE_FILES}/nix/binary_template.nix" ./"${new_name}"
    check_success "./${new_name}"
}

nix_python_template() {
    echo "-> Scaffolding Python development environment flake..."
    rsync -avhzP "${TEMPLATE_FILES}/nix/templates/python/" ./
    check_success "current directory (Python)"
}

nix_react_template() {
    echo "-> Scaffolding React/Node development environment flake..."
    rsync -avhzP "${TEMPLATE_FILES}/nix/templates/react/" ./
    check_success "current directory (React)"
}

nix_rust_template() {
    echo "-> Scaffolding Rust development environment flake..."
    rsync -avhzP "${TEMPLATE_FILES}/nix/templates/rust/" ./
    check_success "current directory (Rust)"
}

web_dir() {
    local new_name
    read -rep "New directory name: " new_name
    echo "-> Scaffolding Web development files into ./${new_name}..."
    rsync -avhzP "${TEMPLATE_FILES}/web_dev" ./"${new_name}"
    check_success "./${new_name}"
}

# Main loop showing question first
while true; do
    clear

    # 1. Show your question first
    echo "What function would you like to run?"
    echo

    # 2. Print the options manually (1 to N, plus Exit)
    for item in "${!options[@]}"; do
        echo "$((item + 1)) ${options[item]}"
    done
    exit_num=$((${#options[@]} + 1))
    echo "${exit_num} Exit"
    echo

    # 3. Read user input
    read -rep "Choice: " choice

    # 4. Handle exit, invalid input, or actions
    if [[ "${choice}" == "${exit_num}" ]] || [[ "${choice,,}" == "exit" ]]; then
        echo "Farewell"
        exit 0
    elif [[ "${choice}" =~ ^[0-9]+$ ]] && (( choice >= 1 && choice <= ${#options[@]} )); then
        index=$(( choice - 1 ))
        echo
        "${actions[index]}"
        echo
        read -rep "Press Enter to continue..."
    else
        echo "Invalid input: ${choice}" >&2
        sleep 1
    fi
done
