#!/bin/bash

# Run on a new machine to add dotfiles config from this repo

# TODO: add new machine software setup
# Maybe split new machine setup and dotfiles additon to separate bash scripts
# so that we can easily add dotfiles to an existing machine withotu full 
# software install

# TODO: install git completion script needed by git shell

# Copy git completion script
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.dotfiles/scripts/git-completion.bash

# Install git setup
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/gitconfig ~/.gitconfig

# Most unix systems use a .bashrc for user config
if [ -f "$HOME/.bashrc" ]; then
    echo "found .bashrc"
    echo "" >> ~/.bashrc
    echo "# Import grahamgilchrist dotfiles" >> ~/.bashrc
    echo "source ~/.dotfiles/.bash_profile" >> ~/.bashrc
fi

# Mac OS X uses a .bash_profile for user config
if [ -f "$HOME/.bash_profile" ]; then
    echo "found .bash_profile, adding config"
    echo "" >> ~/.bash_profile
    echo "# Import grahamgilchrist dotfiles" >> ~/.bash_profile
    echo "source ~/.dotfiles/.bash_profile" >> ~/.bash_profile
fi
