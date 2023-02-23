# If not runnig iteractively do not do anything
[ -z "$PS1" ] && return

shopt -s checkwinsize
shopt -s cmdhist
shopt -s histappend

PAGER=less
EDITOR=nvim
VISUAL=nvim

alias ls="ls -al --color=always"
alias rm="rm -I"
alias dotf="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
