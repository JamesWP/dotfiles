# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

# git prompt
function parse_git_dirty {
  command test -z "$(git status --porcelain --ignore-submodules -unormal)" \
  || echo " ▲"
}

function parse_git_branch {
  e=$( { git status --porcelain --ignore-submodules -unormal; } 2>&1 )
  if [[ ! $e =~ 'Not a git repository' ]]
  then git branch --no-color 2> /dev/null | \
       sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)] /"
  fi
}

export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \[\033[00m\]$(parse_git_branch)$ '
export TERM='xterm-256color'
if [[ -f /usr/bin/clang++-5.0 ]] ; then
  export CXX='clang++-5.0'
fi

alias gs='git status'
alias ll='ls -la --color=auto'

export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTFILE=~/.bash_eternal_history
export HISTTIMEFORMAT="[%F %T] "
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

#if ! [[ -f /usr/share/clang/clang-format.py ]] && [[ -f /usr/share/clang/clang-format-3.8/clang-format.py ]] then
#  echo ln -s -r /usr/share/clang/clang-format-3.8/clang-format.py /usr/share/clang/clang-format.py
#fi

function rw {
  tmux rename-window "$*"
}
export DOCKER_HOST=tcp://0.0.0.0:2375
alias dev_proxy='http_proxy=http://bproxy.tdmz1.bloomberg.com:80 https_proxy=http://bproxy.tdmz1.bloomberg.com:80'
alias ext_proxy='http_proxy=http://proxy.bloomberg.com:77 https_proxy=http://proxy.bloomberg.com:77'
export PATH="~/bin:$PATH:/opt/bb/bin"


