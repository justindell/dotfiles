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
if [ -f $HOME/.ssh_completion ]; then
  source $HOME/.ssh_completion
fi

if [ -f $HOME/.git-completion.bash ]; then
  source $HOME/.git-completion.bash
fi

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
} 

# rvm
[[ -s ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm
rvm use ruby-1.9.3
cd .

export PS1='\[\033[01;32m\]$(parse_git_branch)\[\033[01;36m\] [$(rvm current)] \[\033[00m\]\[\033[01;34m\]$(pwd)\[\033[00m\]\n$ '
