export ZSH="$HOME/.oh-my-zsh"

# ========================
# Main path configurations
# ========================
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

# =======
# Aliases
# =======
alias j11="sudo archlinux-java set java-11-openjdk"
alias j17="sudo archlinux-java set java-17-openjdk"

# =======
# Exports
# =======
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:/home/kadaj/.spicetify

# GOLANG
export PATH=$PATH:$GOPATH/bin
export GOPATH=$HOME/.go

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Java
export JAVA_HOME=/usr/lib/jvm/default
export JDTLS_JVM_ARGS="-javaagent:$HOME/.local/share/nvim/mason/packages/jdtls/lombok.jar"

# Deno
#
# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/resxnance/.zsh/completions:"* ]]; then export FPATH="/home/resxnance/.zsh/completions:$FPATH"; fi
# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/kadaj/.zsh/completions:"* ]]; then export FPATH="/home/kadaj/.zsh/completions:$FPATH"; fi
# Path to your oh-my-zsh installation.
. "/home/resxnance/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit


# Doom Emacs
export PATH=$PATH:/.config/emacs/bin

