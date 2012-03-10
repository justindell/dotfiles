# scm
export EDITOR='vim'

if [ -f $HOME/.bash_aliases ]; then
  source $HOME/.bash_aliases
fi

if [ -f $HOME/.bash_colors ]; then
  source $HOME/.bash_colors
fi

# color the terminal
export CLICOLOR=1

# bash completions
if [ -f $HOME/sandbox/src/leiningen/bash_completion.bash ]; then
  source $HOME/sandbox/src/leiningen/bash_completion.bash
fi

if [ -f $HOME/.ssh_completion ]; then
  source $HOME/.ssh_completion
fi

GIT_PS1_SHOWDIRTYSTATE=true
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/etc/bash_completion.d/git-completion.bash;
  export PS1='\[\033[01;34m\]\w\[\033[00m\]\[\033[01;32m\]$(__git_ps1 " (%s)")\[\033[00m\] \n$ '
fi

# basic path
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH"

# clojurescript
export CLOJURESCRIPT_HOME="$HOME/sandbox/src/clojurescript"
export CLOJURESCRIPT_WATCH_HOME="$HOME/sandbox/src/cljs-watch"
export PATH="$CLOJURESCRIPT_HOME/bin:$PATH"
export PATH="$CLOJURESCRIPT_WATCH_HOME:$PATH"

# java
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/"

# lbm (ugh)
export DYLD_LIBRARY_PATH="/usr/local/29west/LBM_3.6/Darwin-9.8.0-x86_64/lib/"

# golang
export GOROOT="/usr/local/Cellar/go/r60.1"
export PATH="$GOROOT/bin:$PATH"

# rubygems
export PATH="/usr/local/Cellar/ruby/1.9.3-p0/bin:$PATH"

