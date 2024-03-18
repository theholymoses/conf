# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

LS_COLORS='fi=00;90:rs=0:di=00;36:ln=01;35:mh=00:pi=00;33:so=00;33:do=00;33:bd=01;33;01:cd=01;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=00:*~=00;90:*#=00;90:*.swp=00;90:*.tmp=00;90:*.c=00;34:*.h=00;34:*.o=01;32:*.pdf=03;36';
export LS_COLORS

######################################## alias
alias rm='rm -iv'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mv='mv -n --debug'

alias cl="printf '\ec'"
alias sxiv='sxiv -fpta'
alias sxivr='sxiv -r'
alias bshrc='vim ~/.bashrc && source ~/.bashrc'
alias sn='shutdown now'
alias gdb='gdb -q -tui'
alias resolution='xrandr -s 1920x1080'

######################################## sound
function pmg {
  pamixer --get-volume
}
function pms {
  local volume=${1:-"100"}
  pamixer --set-volume "$volume" --allow-boost
}

######################################## other
function vman {
  if [ $# -ne 0 ]; then
    vim -MR +":Man $@" +":set number" +"wincmd j" +":q!"
  fi
}

