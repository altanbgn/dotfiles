# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="wedisagree"

DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# =========================
# User configuration
# =========================
# Enable vi mode
bindkey -v
bindkey -s ^f "cd \$(find $HOME/Personal -mindepth 1 -maxdepth 2 -type d | fzf)\n clear\n"
bindkey -s ^g "$HOME/.config/tmux-sessionizer.sh\n"

# If there is no tmux, create one XD
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach -t res0nance || tmux new -s res0nance
fi

# =========================
# Aliases
# =========================
alias vi="nvim"
alias v="nvim"

# Git aliases
alias gs="git status"
alias gpl="git pull"
alias gpsh="git push"
alias gd="git diff"
alias g+="git add ."

# Navigation
alias tmux-sessionizer="$HOME/.config/scripts/tmux-sessionizer.sh"

# Exports are not in this config
