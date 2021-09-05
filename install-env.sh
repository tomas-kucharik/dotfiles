#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
RESET='\033[0m'

# Check if arguments were passed
if [[ $# -eq 0 ]]; then
    echo "${YELLOW}No arguments passed... stowing everything${RESET}"

    pushd $PWD # Go to $HOME dir, save current directory in stack
    for folder in */ # For each folder in current working directory
    do
        echo "${RED}Removing $folder${RESET}"
        stow -D $folder
        echo "${GREEN}Stowing new $folder${RESET}"
        stow $folder
    done
    popd # Go back to directory saved in stack
else
    echo "${YELLOW}Some arguments were passed... stowing only what you specified${RESET}"

    pushd $PWD # Go to $HOME dir, save current directory in stack
    for arg; do # For each argument passed
        echo "${RED}Removing old $arg${RESET}"
        stow -D $arg
        echo "${GREEN}Stowing new $arg${RESET}"
        stow $arg
    done
    popd # Go back to directory saved in stack
fi
