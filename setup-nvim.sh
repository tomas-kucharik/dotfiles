#/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
RESET='\033[0m'

echo "${YELLOW}Installing neovim..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "${YELLOW}macOS detected"

    # Homebrew
    which -s brew
    if [[ $? -ne 0 ]] ; then
        echo "${YELLOW}Installing brew..."
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        echo "${YELLOW}Updating brew..."
        brew update
    fi

    # node && npm
    which -s node
    if [[ $? -ne 0 ]] ; then
        echo "${YELLOW}Installing node..."
        brew install node
    else
        echo "${YELLOW}node exists. Skipping..."
    fi

    # neovim
    which -s nvim
    if [[ $? -ne 0 ]] ; then
        echo "${YELLOW}Installing neovim"
        brew install neovim
    else
        echo "${YELLOW}neovim exists. Skipping..."
    fi
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "${YELLOW}Linux detected"

    # node && npm
    which -s node
    if [[ $? -ne 0 ]] ; then
        echo "${YELLOW}Installing node and npm"
        curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
        sudo apt-get install -y nodejs
    else
        echo "${YELLOW}node exists. Skipping..."
    fi

    # neovim
    which -s nvim
    if [[ $? -ne 0 ]] ; then
        echo "${YELLOW}Downloading neovim"
        curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
        chmod u+x nvim.appimage
        echo "${YELLOW}Extracting neovim appimage"
        ./nvim.appimage --appimage-extract
        echo "${YELLOW}Moving extracted neovim to /nvim and symlinking to /usr/bin/nvim"
        sudo mv squashfs-root /nvim && sudo ln -s /nvim/AppRun /usr/bin/nvim
    else
        echo "${YELLOW}neovim exists. Skipping..."
    fi
else
    echo "${RED}I don't know how to install in your OS. Exiting..."
    exit 1
fi

# vim-plug
DIR='${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim'
if [[ -d "$DIR" ]]; then
    echo "${YELLOW}vim-plug exists. Skipping..."
else
    echo "${GREEN}Installing vim-plug"
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

# dotfiles repo cloning
REPO="https://github.com/tomas-kucharik/dotfiles"
DIR="~/.dotfiles"
while [[ -d "$DIR" ]]; do
    echo "${RED}Directory $DIR already exists."
    read -p "Enter the path where you want to clone the dotfiles repo: " DIR
done
echo "${GREEN}Cloning nvim repository..."
git clone $REPO $DIR
# dotfiles stow
if [[ $? -ne 1 ]] ; then
    echo "${GREEN}Stowing dotfiles"
    sh $DIR/install-env.sh
    echo "${GREEN}Installing language servers"
    sh $DIR/install-lsp-servers.sh
    echo "${GREEN}Installing plugins in neovim"
    nvim --headless +PlugInstall +qall
else
    echo "${RED}Cloning failed. Exiting..."
    exit 1
fi

