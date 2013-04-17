export TM_RUBY=/usr/local/bin/ruby
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH
export GOROOT=/usr/local/Cellar/go/1.0.3
export GOPATH=~/dev/go

alias dnsflush="dscacheutil -flushcache"
alias mlh-cloud="ssh -i ~/.ssh/aws-mlh.pem ec2-user@23.23.186.107"
alias vi="vim"
alias gka="gitk --all"

export PGDATABASE=postgres

#PS1='\[\e[0;35m\]\u\[\e[m\] \[\e[0;33m\]\w\[\e[m\] \[\e[0;35m\]\$ \[\e[m\]\[\e[0m\]'

[[ -s "/Users/Michael/.rvm/scripts/rvm" ]] && source "/Users/Michael/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.git-completion.sh

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ("${ref#refs/heads/}$(parse_git_dirty)")"
  }

RED="\[\033[0;31m\]"
YELLOW='\[\033[0;33m\]'
GREEN="\[\033[0;32m\]"
NORMAL="\[\033[0m\]"
Magenta='\[\033[0;35m\]'
Blue='\[\033[0;34m\]'         # Blue
Cyan='\[\033[0;36m\]'          # Cyan

PS1="$Magenta\u@\h $Cyan\w$YELLOW\$(__git_ps1)$Magenta \$ \[\e[m\]\[\e[0m\]"

