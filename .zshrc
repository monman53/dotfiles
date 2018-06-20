# general
autoload -Uz compinit promptinit
compinit
promptinit

setopt histignoredups

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

alias g++11="g++ -std=c++11 -Wall -O2"
alias g++14="g++ -std=c++14 -Wall -O2"
alias g++17="g++ -std=c++1z -Wall -O2"

alias tmux="TERM=screen-256color-bce tmux"

# environment variable
export PATH=$HOME/.gem/ruby/2.1.0/bin:$HOME/bin:$GOPATH/bin:$PATH
