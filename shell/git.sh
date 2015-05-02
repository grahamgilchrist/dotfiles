#Alias git
alias g='git'

#auto-complete git branches
if [ -f "~/.dotfiles/scripts/git-completion.bash" ]; then
    source ~/.dotfiles/scripts/git-completion.bash
fi
