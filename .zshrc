#===========================
#   Zsh Configurations      
#   monman                  
#===========================

#---------------------------
# General
#---------------------------
autoload -Uz compinit promptinit colors
compinit
promptinit
colors
setopt HIST_IGNORE_ALL_DUPS



#---------------------------
# Plugins
#---------------------------
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh  // window closing bug on i3-urxvt when typing 'l'


#---------------------------
# Prompt
#---------------------------

autoload -Uz colrs
colors

PROMPT="
${bg[black]} %D %* ${bg[white]}${fg_bold[black]} %d ${reset_color}
%n@%m %# "



#---------------------------
# Aliases
#---------------------------
alias rm="rm -iv"

alias l="ls -F --color"
alias la="ls -Fa --color"
alias ll="ls -lhF --color"
alias lla="ls -lhFa --color"
alias l.="ls -lhFad --color .*"

alias ping8="ping 8.8.8.8"
alias pingg="ping google.com"

alias g++11="g++ -std=c++0x"
alias g++14="g++ -std=gnu++1y"


#---------------------------
# Environment Variables
#---------------------------
export TERM=xterm-256color # for strange bug for ssh with urxvt
export GOPATH=$HOME/works/go
export PATH=$HOME/.gem/ruby/2.1.0/bin:$HOME/bin:$GOPATH/bin:$PATH
