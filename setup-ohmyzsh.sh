#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
RESET='\033[0m'

echo "${YELLOW}Running script for installing zsh, OhMyZsh and stowing dotfiles from github...${RESET}"

if [[ "$OSTYPE" == "darwin" ]]; then
    echo "${YELLOW}macOS detected${RESET}"

    # Homebrew
    which -s brew
    if [[ $? -ne 0 ]]; then
        echo "${YELLOW}Installing brew...${RESET}"
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        echo "${YELLOW}Updating brew...${RESET}"
        brew update
    fi

    # zsh
    which -s zsh
    if [[ $? -ne 0 ]]; then
        echo "${YELLOW}Installing zsh${RESET}"
        brew install zsh
    else
        echo "${YELLOW}zsh exists. Skipping...${RESET}"
    fi
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "${YELLOW}Linux detected${RESET}"

    # zsh
    which -s zsh
    if [[ $? -ne 0 ]]; then
        echo "${YELLOW}Installing zsh${RESET}"
        sudo apt install zsh
    else
        echo "${YELLOW}zsh exists. Skipping...${RESET}"
    fi
else
    echo "${RED}I don't know how to install on your OS. Exiting...${RESET}"
    exit 1
fi

# common for all linux and macOS
# OhMyZsh
DIR="~/.oh-my-zsh"
if ! [[ -d $DIR ]]; then
    echo "${GREEN}Installing OhMyZsh${RESET}"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "${YELLOW}OhMyZsh exists. Skipping...${RESET}"
fi

# dotfiles repo cloning
REPO="https://github.com/tomas-kucharik/dotfiles"
DIR="~/.dotfiles"
while [[ -d "$DIR" ]]; do
    echo "${RED}Directory $DIR already exists.${RESET}"
    read -p "Enter the path where you want to clone the dotfiles repo: " DIR
done
echo "${GREEN}Cloning dotfiles repository...${RESET}"
git clone $REPO $DIR
# dotfiles stow
if [[ $? -ne 1 ]]; then
    echo "${GREEN}Stowing dotfiles${RESET}"
    sh $DIR/install-env.sh zsh
else
    echo "${RED}Cloning failed. Exiting...${RESET}"
    exit 1
fi

