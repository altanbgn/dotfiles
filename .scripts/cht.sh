#!/usr/bin/env bash
selected=`cat ~/.scripts/cht.langs ~/.scripts/cht.cmds | fzf`
if [[ -z $selected ]]; then
  exit 0
fi

read -p "Enter query: " query

if grep -qs "$selected" ~/.scripts/cht.langs; then
  tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
else
  tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
fi
