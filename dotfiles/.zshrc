export ZSH="/home/francisco/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git fzf)
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

# https://stackoverflow.com/questions/47009776/how-to-run-nvm-in-oh-my-zsh
lazynvm() {
  unset -f nvm node npm
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
}
nvm() {
  lazynvm 
  nvm $@
}
node() {
  lazynvm
  node $@
}
npm() {
  lazynvm
  npm $@
}

alias tree="tree --filelimit=35 -L 2 --dirsfirst --noreport"
