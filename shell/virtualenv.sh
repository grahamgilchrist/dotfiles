# virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh

if [ -f "/usr/local/bin/virtualenvwrapper_lazy.sh" ]; then
    source /usr/local/bin/virtualenvwrapper_lazy.sh
fi

alias mkvenv2='mkvirtualenv `basename \`pwd\`` -a `pwd` -p `which python2.7`'
alias mkvenv3='mkvirtualenv `basename \`pwd\`` -a `pwd` -p `which python3`'
