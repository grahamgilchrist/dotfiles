#autoenv checks for .env files when cd'ing into directories
AUTOENV_SCRIPT="/usr/local/Cellar/autoenv/0.1.0/activate.sh"
if [ -f $AUTOENV_SCRIPT ]; then
    source /usr/local/Cellar/autoenv/0.1.0/activate.sh
fi
