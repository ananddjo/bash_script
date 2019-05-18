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
#parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
#}
#PS1="\[\033[0;36m\]\h:\W\[\033[0m\] 🤹  \[\033[0;31m\]\u\[\033[0m\]\[\033[0;33m\]\$(parse_git_branch)\[\033[0m\]\$ "

# git prompt

# get current status of git repo
function parse_git_dirty {
  STATUS="$(git status 2> /dev/null)"
  if [[ $? -ne 0 ]]; then printf "-"; return; else printf ""; fi
  if echo ${STATUS} | grep -c "renamed:"         &> /dev/null; then printf ">"; else printf ""; fi
  if echo ${STATUS} | grep -c "branch is ahead:" &> /dev/null; then printf "!"; else printf ""; fi
  if echo ${STATUS} | grep -c "new file:"        &> /dev/null; then printf "+"; else printf ""; fi
  if echo ${STATUS} | grep -c "Untracked files:" &> /dev/null; then printf "?"; else printf ""; fi
  if echo ${STATUS} | grep -c "modified:"        &> /dev/null; then printf "*"; else printf ""; fi
  if echo ${STATUS} | grep -c "deleted:"         &> /dev/null; then printf "-"; else printf ""; fi
  printf ""
}

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (git:\1'$(parse_git_dirty)')/'
}
PS1="\[\033[1;31m\]\u\[\033[0m\] at \[\033[1;33m\]\H\[\033[0m\] in \[\033[1;32m\]\w\[\033[0m\]\[\033[1;36m\]\$(parse_git_branch)\[\033[0m\]\n👉 "
