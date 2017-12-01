commonExclude="--exclude=\*.{pdb,obj,cod,map,db,dll,swp} --exclude=tags --exclude-dir={.svn,node_modules,documentation,affinity-engine,sigma,business-logic}"

# General Aliases
alias grepc="grep --color=always $commonExclude -Irn"
alias grepc="grep --color=always $commonExclude -Irn"
alias grepc="grep --color=always $commonExclude -Irn"
alias gc="grepc -i"
alias grepnc="grep $commonExclude -Irn"
alias grepf="grep $commonExclude -rIl" # get file name only to pass to other scripts like sed
alias egrepc="egrep --color=always -n"
alias lessr="less -R"
alias sel="pwd | xsel -i"
alias e="exit"
alias v="stty stop '' -ixoff ; vim"
alias ka="killall xterm"
alias zrc="vim ~/.zshrc"
alias snips="vim ~/.vim/UltiSnips/javascript.snippets"
# alias diff="colordiff"

# Reload Herbstluftwm
alias hr="~/.config/herbstluftwm/autostart && herbstclient reload"

