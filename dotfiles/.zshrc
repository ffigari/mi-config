export ZSH="/home/francisco/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git fzf)
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

source $HOME/.scripts/loaders.sh

chpwd () {
  if [ -f package.json ] || [ -f .nvmrc ]
  then
    load-node
  fi

  return 0
}

alias load-node="load-node"
alias tree="tree --filelimit=35 -L 2 --dirsfirst --noreport"
