# virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

alias mkvenv2='mkvirtualenv `basename \`pwd\`` -a `pwd` -p `which python2.7`'
alias mkvenv3='mkvirtualenv `basename \`pwd\`` -a `pwd` -p `which python3`'
