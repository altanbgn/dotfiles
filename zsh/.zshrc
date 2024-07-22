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
bindkey -s ^g "tmux-sessionizer\n"
bindkey -s ^b "bg-changer\n"

# If there is no tmux, create one XD
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach -t res0nance || tmux new -s res0nance
fi

# =========================
# Aliases
# =========================
alias vi="nvim"
alias v="nvim"

[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec

# bun completions
[ -s "/home/kadaj/.bun/_bun" ] && source "/home/kadaj/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#golang
export GOPATH="$HOME/.go"
export PATH="$GOPATH/bin:$PATH"
