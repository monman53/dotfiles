# general
autoload -Uz compinit promptinit
compinit
promptinit

setopt hist_ignore_all_dups
setopt share_history

# prompt
export PROMPT='
%F{whilte}%K{black} %D{%Y-%m-%d %H:%M:%S} %F{black}%K{white} %/ 
%F{clear}%K{clear}%n@%M $ '
export RPROMPT=''

# aliases
alias rm="rm -iv"

alias l="ls -F --color"
alias la="ls -Fa --color"
alias ll="ls -lhF --color"
alias lla="ls -lhFa --color"
alias l.="ls -lhFad --color .*"

alias top="top -c -d0.1"

alias tree="tree -aC"

alias ping8="ping 8.8.8.8"
alias pingg="ping google.com"

alias tmux="TERM=screen-256color-bce tmux"
