# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \[\033[00m\]$ '
export TERM='xterm-256color'
if [[ -f /usr/bin/clang++-5.0 ]] ; then
  export CXX='clang++-5.0'
fi

alias gs='git status'
alias ll='ls -la --color=auto'


#if ! [[ -f /usr/share/clang/clang-format.py ]] && [[ -f /usr/share/clang/clang-format-3.8/clang-format.py ]] then
#  echo ln -s -r /usr/share/clang/clang-format-3.8/clang-format.py /usr/share/clang/clang-format.py
#fi

function rw {
  tmux rename-window "$*"
}
