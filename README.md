<h1 align="center">Personal dotfiles</h1>
![setup](https://github.com/altanbgn/dotfiles/blob/main/images/screenshot-1.png)

## How to use?

1. Clone this repository

    ```bash
    git clone https://github.com/altanbgn/dotfiles
    cd dotfiles
    ```

2. Install GNU Stow

    ```bash
    # I use arch btw
    yay -S stow
    # or
    sudo pacman -S stow
    ```

3. Uncomment the lines in [`install.sh`](./install.sh) of dotfiles you want to install
4. Execute `./install.sh`.

## Dependencies

If you install these dependencies, my dotfiles will work flawlessly (i hope)
Even tho I don't remember every single one of them, I will try to keep this list up to date

- `waybar`
- `rofi-wayland`
- `wl-clipboard`
- `grim`
- `noto-fonts`
- `noto-fonts-cjk`
- `noto-fonts-emoji`
- `noto-fonts-extra`
- `otf-font-awesome`
- `swaylock-effects-git`
- `swaybg`
- `xorg-xwayland`
