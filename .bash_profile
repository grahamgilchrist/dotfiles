# Add helper function for testing if commands exist
# http://stackoverflow.com/questions/592620/check-if-a-program-exists-from-a-bash-script
command_exists () {
    command -v "$1" >/dev/null 2>&1
}

# Import all bash config files from shell directory
for file in ~/.dotfiles/shell/*.sh
do
  echo "Shell config loading: $file"
  [ -e "$file" ] && source "$file"
done
