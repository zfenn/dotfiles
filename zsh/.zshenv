# vim set ft=zsh

bindkey -v

source  /home/zfen/.globenv

typeset -aU path
path+=("$HOME/bin")

HISTSIZE=1000
SAVEHIST=$HISTSIZE
HISTFILE="$XDG_DATA_HOME/zhistory"

ZDOTDIR="/home/zfen/.config/zsh"
source "$ZDOTDIR/zshrc"
