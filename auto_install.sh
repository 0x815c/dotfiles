#!/bin/bash

DOT_DIR="$HOME/dotfiles"

has() {
    type "$1" > /dev/null 2>&1
}

if [ ! -d ${DOT_DIR} ]; then
    if has "git"; then
        git clone https://github.com/ichiay/dotfiles.git ${DOT_DIR}
    else
        echo "git required"
        exit 1
    fi
    cd ${DOT_DIR}
    install.sh
else
    echo "dotfiles already exists"
    exit 1
fi