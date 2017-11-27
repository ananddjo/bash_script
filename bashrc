#!/bin/bash

# constants
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin

M2_HOME=/usr/local/opt/maven
PATH=$PATH:$HOME/bin:$M2_HOME/bin

MYSQL_HOME=/usr/local/mysql
PATH=$PATH:$HOME/bin:$MYSQL_HOME/bin

#alias
# ls alias for color-mode
alias ls='ls -al'
alias lh='ls -lhaG'

#alias cql
alias cql='cqlsh'

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# simple ip
alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d " " -f2'
# more details
alias ip1="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
#alias ip2="curl icanhazip.com"
#alias ip2geo="geoiplookup $(curl icanhazip.com 2>/dev/null)"

# grep with color
alias grep='grep --color=auto'

# processes
alias ps='ps -ax'

# top command
alias top='htop'

# refresh shell
alias reload='source ~/.bashrc'

# git commamands simplified
alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias grb='git rebase'
alias gbr='git branch'
alias gad='git add -A'
alias gpl='git pull'
alias gpu='git push'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# color diffs
alias diff='colordiff'

# mount readable
alias mount='mount |column -t'

# path, date, time
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
