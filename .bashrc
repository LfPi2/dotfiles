# If not runnig iteractively do not do anything
[ -z "$PS1" ] && return

shopt -s checkwinsize
shopt -s cmdhist
shopt -s histappend

export PAGER=less
export EDITOR=nvim
export VISUAL=nvim

[ -d $HOME/.local/bin ] && export PATH="$PATH:$HOME/.local/bin"

alias ls="ls -al --color=always"
alias rm="rm -I"
alias dotf="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
