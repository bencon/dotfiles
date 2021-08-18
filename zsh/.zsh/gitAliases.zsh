#!/usr/bin/env zsh
master=$MBRANCH

alias g='git'
alias gcl='git clone'
alias gad='git add'
alias gaa='git add -A'
alias gs='git status'
alias gss='git status -s'
alias gsh='git show'
alias gst='git stash'
alias gstp='git stash pop'
alias gl='git log'
alias gln='git log --name-only' # print file names
alias gld='git log --no-merges --name-only $master..' # only show commits not on main branch
alias gldp='git log --no-merges -p $master..' # only show commits not on main branch
alias pull='git pull'
alias gri='git rebase i'
alias gp='git push'
alias gpu='git push -u origin HEAD'
alias gpf'git push -f'
alias gpo='git push origin'
alias gd='git diff'
alias gdh='git diff origin/$(git symbolic-ref --short HEAD)'
alias gdm='git diff $master'
alias gdmn='git diff --name-only $master'
alias gdw='git diff --color-words'
alias gdt='git difftool --name-only $master'
#alias gc='git commit -v'
alias gca='git commit -va'
alias gct='git commit -am "temp"'
alias gtu='git reset HEAD~1'
alias gb='git branch'
alias gbd='git branch -D'
alias gbr='git branch -r' # list all remote branches
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gc-='git checkout -'
alias gco='git checkout'
alias gcm='git checkout $master'
alias gcb='git checkout -b'
alias gcop='git checkout HEAD~1'
alias gcr='git cherry -v $master'
alias gm='git merge'
alias gms='git merge --squash'
alias gmm='git checkout $master; git pull; git checkout -; git merge --no-edit --stat $master'
alias gmmn='git checkout $master; git pull; git checkout -; git merge --no-commit --stat $master'
alias gf='git fetch'
alias gcf='git clean -f -x'
alias rhh='git reset --hard origin/$(git symbolic-ref --short HEAD)'
# alias rhh-='git reset --hard'
alias rhh-='anonFunc() { git reset --hard HEAD~$1 };anonFunc'
alias rh-='anonFunc() { git reset HEAD~$1 };anonFunc'
alias gcoo='git checkout --ours'
alias gcot='git checkout --theirs'
alias gco-='anonFunc() { git checkout HEAD~$1 };anonFunc'

# How to use an alias with parameters
alias example='anonFunc() { echo Your arg was $1 };anonFunc'
