#===========================
#   .bashrc
#   monman                  
#===========================

#---------------------------
# General
#---------------------------
export HISTCONTROL=ignoredups


#---------------------------
# Prompt
#---------------------------
BLACK="\[\e[1;37;40m\]"
WHITE="\[\e[1;30;47m\]"
RESET="\[\e[0;39;49m\]"
export PS1="\n${BOLD}${BLACK} `date +%F\ %T` ${WHITE} `pwd` ${RESET}\n\u@\h $ "


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

alias tree="tree -a"

alias ping8="ping 8.8.8.8"
alias pingg="ping google.com"

alias g++11="g++ -std=gnu++11"
alias g++14="g++ -std=gnu++14"
alias g++17="g++ -std=gnu++1z"


#---------------------------
# Environment Variables
#---------------------------
export TERM=xterm-256color # for strange bug for ssh with urxvt
export GOPATH=$HOME/works/go
export PATH=$HOME/.gem/ruby/2.1.0/bin:$HOME/bin:$GOPATH/bin:$PATH
