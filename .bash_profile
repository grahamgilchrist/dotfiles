# Import all bash config files from shell directory
for file in ~/.dotfiles/shell/*.sh
do
  echo "Shell config loading: $file"
  [ -e "$file" ] && source "$file"
done
