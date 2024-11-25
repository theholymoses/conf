# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias bshrc='vim ~/.bashrc && source ~/.bashrc'

alias cl="printf '\ec'"
alias cal="cal -3"

alias less="less -N --use-color"
export LESSHISTFILE="/dev/null"

export PYTHONSTARTUP="~/.pythonrc"

alias rm="rm -iv"
alias mv="mv -i --debug"
alias cp="cp -i --debug"

alias ls="ls --color=auto"
alias grep="grep --color=auto"

alias gdb="gdb -q -tui"

alias pacman="pacman --color=auto"
alias makepkg="makepkg -sir"

alias w3m="w3m google.com"

alias pmg="pamixer --get-volume"
alias pms="pamixer --allow-boost --set-volume"

alias sxiv="sxiv -af"
alias sxivr="sxiv -r"


# init
setfont cyr-sun16 -d 2> /dev/null

