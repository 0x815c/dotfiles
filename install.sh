#!/bin/bash
DOT_DIR="$HOME/dotfiles"

link() {
    [[ "$f" == "." ]] && continue
    [[ "$f" == ".." ]] && continue
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    [[ "$f" == "README.md" ]] && continue
    [[ "$f" == "auto_install.sh" ]] && continue
    [[ "$f" == "install.sh" ]] && continue

    ln -snf $DOT_DIR/"$f" $HOME/"$f"
    echo "linked $1"
}

for f in *
do
    link "$f"
done

for f in .*
do
    link "$f"
done
