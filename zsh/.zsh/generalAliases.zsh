basicExclude="--exclude=\*.{pdb,obj,cod,map,db,dll,swp,bundle.js,min.js,sql,html,htm,xml} --exclude=tags --exclude=.*"
dotFileExclude="--exclude=.*"
nonCore="--exclude-dir={affinity-engine,sigma,business-logic}"
excludeSomeDirs="--exclude-dir={.git,.svn,.npm,.cache,node_modules,documentation,build,keycloakWorkingDir,resources,static,dist}"
excludeAll="$basicExclude $excludeSomeDirs $nonCore $dotFileExclude"
excludeMost="$basicExclude $excludeSomeDirs"

#################################################################################
###### Grep Aliases
#################################################################################
alias grepExcludeAll="grep $excludeAll -Irn"
alias grepBasic="grep $basicExclude -Irn"
alias grepExcludeMost="grep $excludeMost -Irn"

###### general search with many filters
alias ga="grepExcludeAll --color=always -i"
alias gA="grepExcludeAll --color=always"
alias gac="grepExcludeAll -i"
alias gAc="grepExcludeAll "

###### exclude some dirs
alias gmo="grepExcludeMost --color=always -i"  # gm clashes with git aliases
alias gM="grep --color=always $excludeMost -Iirn"

###### more permissive search
# TODO - color exclusions
alias gc="grepBasic --color=always -i"
alias gcnc="grepBasic -i"
alias gC="grepBasic --color=always"

###### most permissive search
alias grn="grep --color=always -iIrn"

###### Isolate search between types of files
alias gcj="grep --color=always --include=\*.js -Irn" #only search js files
alias gcts="grep --color=always --include=\*.ts -Irn" #only search js files
alias gcs="grep --color=always --include=\*.scss -Irn" #only search scss files
alias gch="grep --color=always --include=\*.h -Irn" #only search h files
# alias gr="grep --color=always --include=\*.md -Irn" #only search h files
alias gr="grepBasic --color=always --include=\*.md" #only search h files

alias grepf="grep $excludeMost -rIli" # get file name only to pass to other scripts like sed

alias egrepc="egrep --color=always -n"


###### Populate vim arglist with grepped files
alias gfv='anonFunc() { grep --exclude-dir={.git,.svn,.npm,.cache,node_modules,documentation,build,keycloakWorkingDir,resources,static} -rIli "$1" | xargs vim };anonFunc'

#################################################################################
###### General Aliases
#################################################################################
alias lessr="less -R"
alias lr=lessr
alias sel="pwd | xsel -i"
alias e="exit"
alias v="stty stop '' -ixoff ; vim"
alias ka="killall vim; killall -9 xterm"
alias zrc="vim ~/.zshrc"
alias vrc="vim ~/.vim/general.vim"
alias snips="vim ~/.vim/UltiSnips/javascript.snippets"
alias gita="vim ~/.zsh/gitAliases.zsh"
alias plugs="vim ~/.vim/plugins.vim"
alias ct="ctags -R --exclude=.git --exclude=node_modules --exclude=test --exclude=sigma --exclude=lib --exclude=api/affinity-engine/*"
alias ff="firefox &"
alias t="tree"
alias f="find . -type f -iname"
alias agi="sudo apt-get install"
alias h="vim ~/.zsh_history"
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
