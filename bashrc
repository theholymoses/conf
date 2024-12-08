# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias bshrc='vim ~/.bashrc && source ~/.bashrc'
export EDITOR="/usr/bin/vim"

alias cl="printf '\ec'"
alias cal="cal -3"

alias less="less -N --use-color"
export LESSHISTFILE="/dev/null"

alias rm="rm -iv"
alias mv="mv -i --debug"
alias cp="cp -i --debug"

alias ls="ls --color=auto"
alias grep="grep --color=auto"

alias gdb="gdb -q -tui"

alias pacman="pacman --color=auto"
alias makepkg="makepkg -sir"

alias w3m="w3m google.com"

alias sxiv="sxiv -af"
alias sxivr="sxiv -r"

alias scrn="scrot -D :0 -d 3 --format png -F ~/screen/%Y-%m-%d.png"
alias mc="mc -d"

alias q="shutdown now"

alias conf="source ~/.xconfig"

# init
setfont cyr-sun16 -d 2> /dev/null

