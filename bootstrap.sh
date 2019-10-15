#!/bin/zsh

# This is not exactly a dotfile, but running this script will take dotfiles in this repo
# and move/link them to appropriate places

# copy global git config files
cp .gitconfig ~
cp .gitignore_global ~

# copy Ackee specific gitconfig
# ~/Ackee doesn't have to exist yet so we should try to create it 
mkdir -p ~/Ackee
cp .gitconfig_ackee ~/Ackee/.gitconfig

# append personal .zshrc to global .zshrc
echo "source '$PWD/.zshrc'" >> ~/.zshrc