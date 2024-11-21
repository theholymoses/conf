# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias bshrc='vi ~/.bashrc && source ~/.bashrc'

alias cl="printf '\ec'"
alias cal="cal -3"

alias less="less -N --use-color"
export LESSHISTFILE="/dev/null"

alias rm="rm -iv"
alias mv="mv -i --debug"
alias cp="cp -i --debug"

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias pacman="pacman --color=auto"

alias makepkg="makepkg -sir"

# init
setfont cyr-sun16 -d
