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

stow --target "$HOME" --no-folding dunst --adopt
stow --target "$HOME" --no-folding git --adopt
stow --target "$HOME" --no-folding i3 --adopt
stow --target "$HOME" --no-folding nvim --adopt
stow --target "$HOME" --no-folding rofi --adopt
stow --target "$HOME" --no-folding tmux --adopt
stow --target "$HOME" --no-folding vim --adopt
stow --target "$HOME" --no-folding xdg --adopt
stow --target "$HOME" --no-folding zsh --adopt
stow --target "$HOME" --no-folding wezterm --adopt

stow --target "$HOME" --no-folding scripts --adopt

echo "Done!"
