FZF_DEFAULT_COMMAND='ag --hidden --ignore .git  -g ""' 

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

bindkey '^P' fzf-history-widget

bindkey -r "^t"
bindkey -r "^r"
