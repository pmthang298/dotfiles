#!/bin/sh

sudo apt update
sudo apt install zsh -y
# mkdir .cache && cd .cache
git --version 2>&1 >/dev/null
GIT_AVAILABLE=$?

if [ $GIT_AVAILABLE -ne 0 ]; then
        sudo apt install git -y
fi

GITHUB_REPO="https://github.com/zsh-users"

sudo git clone $GITHUB_REPO/zsh-syntax-highlighting /usr/local/share/zsh-syntax-highlighting
sudo git clone $GITHUB_REPO/zsh-history-substring-search /usr/local/share/zsh-history-substring-search
sudo git clone $GITHUB_REPO/zsh-autosuggestions /usr/local/share/zsh-autosuggestions
# git clone https://github.com/pmthang298/dotfiles $HOME/dotfiles
chsh -s $(which zsh)
cp .zshrc $HOME/
zsh
