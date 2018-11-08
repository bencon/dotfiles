commonExclude="--exclude=\*.{pdb,obj,cod,map,db,dll,swp,bundle.js,min.js,sql} --exclude=tags"
excludeAllDirs="--exclude-dir={.svn,node_modules,documentation,affinity-engine,sigma,business-logic,build}"
excludeSomeDirs="--exclude-dir={.svn,node_modules,documentation}"
excludeAll="$commonExclude $otherExcludes $excludeAllDirs"

# General Aliases
alias grepc="grep --color=always $excludeAll -Irn"
alias grepcn="grep --color=always $commonExclude -Irn"
alias grepe="grep --color=always $commonExclude $excludeSomeDirs -Irn"
alias gc="grepc -i"
alias grepnc="grep $excludeAll -Irn"
alias gnc=grepnc
alias grepf="grep $excludeAll -rIl" # get file name only to pass to other scripts like sed
alias egrepc="egrep --color=always -n"
alias lessr="less -R"
alias lr=lessr
alias sel="pwd | xsel -i"
alias e="exit"
alias v="stty stop '' -ixoff ; vim"
alias ka="killall xterm"
alias zrc="vim ~/.zshrc"
alias snips="vim ~/.vim/UltiSnips/javascript.snippets"
alias plugs="vim ~/.vim/plugins.vim"
alias ct="ctags -R --exclude=.git --exclude=node_modules --exclude=test --exclude=sigma --exclude=lib --exclude=api/affinity-engine/*"
alias ff="firefox &"
# alias diff="colordiff"
