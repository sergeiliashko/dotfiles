#!/usr/bin/env bash

set -e

DOTFILES="$HOME/dotfiles"
if [ ! -d "$DOTFILES" ]; then
    echo "Error: $DOTFILES does not exist"
    exit 1
fi

mkdir -p "$HOME/.config"
mkdir -p "$HOME/.config/ghostty"
mkdir -p "$HOME/.ssh"

ln -sfn "$DOTFILES/nvim" "$HOME/.config/nvim"
ln -sfn "$DOTFILES/ghostty/config" "$HOME/.config/ghostty/config"
ln -sfn "$DOTFILES/tmux.conf" "$HOME/.tmux.conf"
ln -sfn "$DOTFILES/gitconfig" "$HOME/.gitconfig"
ln -sfn "$DOTFILES/zshrc" "$HOME/.zshrc"
ln -sfn "$DOTFILES/zprofile" "$HOME/.zprofile"


echo "Dotfiles installed."
