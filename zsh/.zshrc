# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/.scripts"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
bindkey -s ^g "tmux-sessionizer\n"
bindkey -s ^b "bg-changer\n"

# If there is no tmux, create one XD
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach -t main || tmux new -s main
fi

# =========================
# Aliases
# =========================
alias vi="nvim"
alias v="nvim"

#golang
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
