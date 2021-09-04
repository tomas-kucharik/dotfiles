#/bin/bash

Green='\033[0;32m'
Red='\033[0;31m'
Reset='\033[0m'

echo "Installing neovim..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "macOS detected"

    # Homebrew
    which -s brew
    if [[ $? != 0 ]] ; then
        echo "Installing brew..."
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        echo "Updating brew..."
        brew update
    fi

    # node && npm
    which -s node
    if [[ $? != 0 ]] ; then
        echo "Installing node..."
        brew install node
    else
        echo "node exists. Skiping..."
    fi

    # neovim
    which -s nvim
    if [[ $? != 0 ]] ; then
        echo "Installing neovim"
        brew install neovim
    else
        echo "neovim exists. Skiping..."
    fi
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "Linux detected"

    # node && npm
    which -s node
    if [[ $? != 0 ]] ; then
        echo "Installing node and npm"
        curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
        sudo apt-get install -y nodejs
    else
        echo "node exists. Skiping..."
    fi

    # neovim
    which -s nvim
    if [[ $? != 0 ]] ; then
        echo "Downloading neovim"
        curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
        chmod u+x nvim.appimage
        echo "Extracting neovim appimage"
        ./nvim.appimage --appimage-extract
        echo "Moving extracted neovim to /nvim and symlinking to /usr/bin/nvim"
        sudo mv squashfs-root /nvim && sudo ln -s /nvim/AppRun /usr/bin/nvim
    else
        echo "neovim exists. Skiping..."
    fi
else
    echo "${Red}I don't know how to install in your OS. Exiting..."
    exit 1
fi

echo "${Green}Installing vim.plug"
DIR='${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim'
if [ -d "$DIR" ]; then
    echo "Vim-plug exists. Skiping..."
else
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

REPO="https://github.com/tomas-kucharik/dotfiles"
DIR="~/.dotfiles"
if [ -d "$DIR" ]; then
    echo "${Red}Directory $DIR already exists."
    read -p "Enter the name of directory where you want to clone dotfiles repo" DIR
else
    echo "${Green}Cloning nvim repository..."
    git clone $REPO $DIR
    if [[ $? != 1 ]] ; then
        echo "${Green}Stowing dotfiles"
        sh $DIR/install-env.sh
        echo "${Green}Installing language servers"
        sh $DIR/install-lsp-servers.sh
        echo "${Green}Installing plugins in neovim"
        nvim --headless +PlugInstall +qall
    else
        echo "${Red}Cloning failed. Exiting..."
        exit 1
    fi
fi

