#!/usr/bin/env bash
languages=`echo "golang lua cpp c tsc nodejs" | tr ' ' '\n'`
core_utils=`echo "xrgs find mv sed awk" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "query: " query

if printf $languages | grep -qs $selected; then
  tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
else
  tmux neww bash -c "curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done"
fi
