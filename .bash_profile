# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

export PS1='\[\033k\u@\h:\w\033\\\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

alias gs='git status'
alias ll='ls -la'

function rw {
  tmux rename-window "$*"
}
