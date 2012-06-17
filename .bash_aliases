# general
alias la="ls -lah --color"
alias lsd="ls | grep ^d"
alias grep='grep --color=auto'
alias nerd="vim -c NERDTree"

# git aliases
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias glg='git log --pretty=oneline'
alias glg='git log --pretty=oneline --decorate'
alias glgh='git log --oneline --decorate | head'
alias gco='git checkout'
alias grm='gst | awk '\''/deleted/ {print $3}'\'' | xargs git rm'

# postgresql
alias start_pgsql='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_pgsql='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

#side projects
alias dealoftheday='cd /Users/jdell/src/Projects/dealoftheday/'
alias makeanoffer='cd /Users/jdell/src/Projects/makeanoffer/'
alias volunteer='cd /Users/jdell/src/Projects/volunteer/'

alias tstart='thin start -d && tail -f log/development.log'
alias tstop='kill `cat tmp/pids/thin.pid`'
