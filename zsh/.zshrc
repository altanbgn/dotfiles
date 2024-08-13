# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# =========================
# Main path configurations
# =========================
export PATH="$PATH:$HOME/.scripts"
export PATH="$PATH:$GOPATH/bin"

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

#nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#java
export JAVA_HOME=/usr/lib/jvm/default
export JDTLS_JVM_ARGS="-javaagent:$HOME/.local/share/java/lombok.jar"

#ailab
export AILAB_GROUP_ID=3707208
export CI_SERVER_URL=https://gitlab.com
export SPRING_PROFILES_ACTIVE=local

