export ZSH="/home/francisco/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git fzf)
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

load-node () {
  [ -z nvm ] && unset -f nvm
  [ -z node ] && unset -f node
  [ -z npm ] && unset -f npm

  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  [ -f .nvmrc ] && nvm use

  return 0
}

chpwd () {
  if [ -f package.json ] || [ -f .nvmrc ]
  then
    load-node
  fi

  return 0
}

alias load-node="load-node"
alias tree="tree --filelimit=35 -L 2 --dirsfirst --noreport"
