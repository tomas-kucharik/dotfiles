#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
RESET='\033[0m'

echo -e "${YELLOW}Installing os independent language servers...${RESET}"

echo -e "${YELLOW}Installing with npm${RESET}"
npm i -g bash-language-server # bash
npm i -g dockerfile-language-server-nodejs # dockerfile
npm i -g graphql-language-service-cli # graphql
npm i -g vscode-langservers-extracted # html, css, js .etc
npm i -g pyright # python
npm i -g typescript typescript-language-server # typescript
npm i -g vim-language-server # viml
npm i -g vls # vue
npm i -g denols # deno

echo -e "${YELLOW}Installing with yarn${RESET}"
yarn global add yaml-language-server # yaml

echo -e "${YELLOW}Installing os dependent language servers${RESET}"
if [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    echo -e "${YELLOW}Installing with brew${RESET}"
    brew install terraform-ls # terraform
else
    # Expecting Ubuntu.
    echo -e "${YELLOW}Installing with apt${RESET}"
    # Add the HashiCorp GPG key
    curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
    # Add the official HashiCorp Linux repository
    sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
    sudo apt-get update && sudo apt-get install terraform-ls # terraform
fi

