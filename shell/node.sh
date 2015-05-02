# node package manager
if command_exists npm; then
    export NODE_PATH=$(npm root -g)
fi
