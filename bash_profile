#!/bin/bash

# welcome to terminal

# update geoip locations in background
(geoipupdate &)
sh archey

# load bashrc
source ~/.bashrc

#bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# prompt 
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
PS1="\[\033[0;36m\]\h:\W\[\033[0m\] 🤹  \[\033[0;31m\]\u\[\033[0m\]\[\033[0;33m\]\$(parse_git_branch)\[\033[0m\]\$ "
