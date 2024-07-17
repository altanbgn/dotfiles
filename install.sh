#!/usr/bin/env bash
function check_prog() {
    if ! hash "$1" > /dev/null 2>&1; then
        echo "Command not found: $1. Aborting..."
        exit 1
    fi
}

check_prog stow
check_prog curl

mkdir -p "$HOME/.config"

echo "Stow is doing it's magic. Please wait..."

stow --target "$HOME" --no-folding alacritty
stow --target "$HOME" --no-folding dunst
stow --target "$HOME" --no-folding git
stow --target "$HOME" --no-folding hypr
# stow --target "$HOME" --no-folding i3
stow --target "$HOME" --no-folding nvim
stow --target "$HOME" --no-folding rofi
stow --target "$HOME" --no-folding sway
stow --target "$HOME" --no-folding tmux
stow --target "$HOME" --no-folding vim
stow --target "$HOME" --no-folding xdg
stow --target "$HOME" --no-folding zsh

sudo stow --target "/usr/local/bin" --no-folding scripts

echo "Done!"
