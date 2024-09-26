<h1 align="center">Personal dotfiles</h1>

![arch setup](https://i.imgur.com/sXuSDVO.png)

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
    ```

3. Uncomment the lines in [`install.sh`](./install.sh) of dotfiles you want to install
4. Execute `./install.sh`.

## Dependencies

If you install these dependencies, my dotfiles will work flawlessly (i hope)
Even tho I don't remember every single one of them, I will try to keep this list up to date

`noto-fonts`, `noto-fonts-cjk`, `noto-fonts-emoji`, `noto-fonts-extra`,
`otf-font-awesome`, `xclip`, `brightnessctl`, `polybar`, `picom`, `rofi`,
`feh`

## Developer Environment

`alacritty`, `tmux`, `neovim`, `zsh`, `git`,

### Tmux

For tmux, you need to install the plugin manager in order to load in the theme for absolute experience.

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Neovim

I know that packer unmaintained but I don't have time to fix it.
I didn't encounter any error so far so I am using as it is.

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
