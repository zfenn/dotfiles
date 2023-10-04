#
# .zshenv

source  ~/.globenv

typeset -aU path
path+=("$HOME/bin")

HISTFILE="$XDG_DATA_HOME/zhistory"
HISTSIZE=100000
SAVEHIST=$HISTSIZE

ZDOTDIR="$XDG_CONFIG_HOME/zsh"
source $ZDOTDIR/zshrc
