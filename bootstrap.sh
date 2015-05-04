#!/bin/bash

# Run on a new machine to add dotfiles config from this repo

# TODO: add new machine software setup
# Maybe split new machine setup and dotfiles additon to separate bash scripts
# so that we can easily add dotfiles to an existing machine withotu full 
# software install

# TODO: install git completion script needed by git shell

# Install git setup
ln -s ~/.dotfiles/.gitignore ~/.gitignore
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

echo "source .dotfiles/.bash_profile" > ~/.bash_profile
echo "source .dotfiles/.bash_profile" > ~/.bashrc
