#===========================
#   .bashrc
#   monman                  
#===========================

#---------------------------
# General
#---------------------------
export HISTCONTROL=erasedups


#---------------------------
# Prompt
#---------------------------
BLACK="\[\e[1;97;40m\]"
WHITE="\[\e[1;30;107m\]"
RESET="\[\e[0m\]"
export PS1="\n${BLACK} \D{%F %T} ${WHITE} \$(pwd) ${RESET}\n\u@\h $ "


#---------------------------
# Aliases
#---------------------------
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


#---------------------------
# Environment Variables
#---------------------------
export TERM=xterm-256color # for strange bug for ssh with urxvt
export GOPATH=$HOME/works/go
export PATH=$HOME/.gem/ruby/2.1.0/bin:$HOME/bin:$GOPATH/bin:$PATH
