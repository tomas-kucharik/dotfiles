#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
RESET='\033[0m'

# Argument check
if [[ $# -eq 0 ]]; then
    echo "${YELLOW}No arguments passed... destowing everything${RESET}"
    # Go to root dir, save current directory in stack
    pushd $PWD
    # For each folder in current working directory
    for folder in */
    do
        echo "${RED}Removing $folder${RESET}"
        stow -D $folder
    done
    # Go back to directory saved in stack
    popd
else
    echo "${YELLOW}Some arguments were passed... destowing only what you specified${RESET}"
    # Go to root dir, save current directory in stack
    pushd $PWD
    for arg; do
        # For each folder in current working directory
        echo "${RED}Removing old $arg${RESET}"
        stow -D $arg
    done
    # Go back to directory saved in stack
    popd
fi
