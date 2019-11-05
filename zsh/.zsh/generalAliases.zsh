commonExclude="--exclude=\*.{pdb,obj,cod,map,db,dll,swp,bundle.js,min.js,sql,html} --exclude=tags"
excludeAllDirs="--exclude-dir={.npm,.svn,node_modules,documentation,affinity-engine,sigma,business-logic,build}"
excludeSomeDirs="--exclude-dir={.svn,node_modules,documentation}"
excludeAll="$commonExclude $otherExcludes $excludeAllDirs"

# General Aliases
alias grepc="grep --color=always $excludeAll -Irn"
alias grepcn="grep --color=always $commonExclude -Irn"
alias grepe="grep --color=always $commonExclude $excludeSomeDirs -Iirn"
alias gcj="grep --color=always --include=\*.js -Irn" #only search js files
alias gcs="grep --color=always --include=\*.scss -Irn" #only search scss files
alias gch="grep --color=always --include=\*.h -Irn" #only search h files
alias gc="grepc -i"
alias gC="grepc"
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
alias t="tree"
alias f="find . -iname"
alias agi="sudo apt-get install"
alias h="history | vim -"
alias l="ls -al"
# alias diff="colordiff"

# custom search by given file type
gfile() {
   if (( $# != 2 )) ; then
       echo usage: parameter 1 file type, parameter 2 search string ;
   else
       echo grep --color=always --include=\*.$1 $excludeSomeDirs -Irn $2
   fi
}


#find . -path ./node_modules -prune -o -name '*.md' -print | xargs grep --color=always -Irn "test"
#find . -type d \( -path node_modules -o -path .svn -o -path documentation \) -prune -o -print | xargs grep --color=always -Irn "test"
