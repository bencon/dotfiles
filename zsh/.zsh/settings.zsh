# Set vim as default editor
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# increase scroll rates
xset r rate 190 60

# Set terminal vim mode
set -o vi

export TERM=xterm-256color
xrdb -merge ~/.Xresources

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
