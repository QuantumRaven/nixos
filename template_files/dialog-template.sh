#!/bin/bash

: <<"AUTHOR_NOTES"

Author: Chloe Carpenter

Purpose: Menu template 2

AUTHOR_NOTES

: <<"HANDLE_TRAPS"

Handle trap function for error handling

HANDLE_TRAPS

handle_err () {

  local s=$?; echo "$0:${BASH_LINENO[0]} $BASH_COMMAND"; exit $s;

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

: <<"EXAMPLES"

Basic Syntax

dialog \ Initiates dialog prompt
	--backtitle "Options panel" \
	--menu "Select an option" \
	10 40 3 \
	1 "First option" \
	2 "Second option"

Creating a Menu

items=(1 "Item 1"
       2 "Item 2")

while choice=$(dialog --title "$TITLE" \
               --menu "Please select" 10 40 3 "${items[@]}" \
	       2>&1 > /dev/tty)
	do
	case $choice in
	    1) ;; # some action on 1
	    2) ;; # some action on 2
	    *) ;; # some action on other
	esac
done
clear # clear after user pressed Cancel

EXAMPLES

: <<"GLOBAL_VARIABLES"

Global variables go here

GLOBAL_VARIABLES

: <<"FUNCTIONS"

Functions go here

FUNCTIONS


