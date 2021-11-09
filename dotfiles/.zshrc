export ZSH="/home/francisco/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git fzf)
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

source $HOME/.scripts/loaders.sh

function bring_renamed_content_from () {
  ls $1 | \
  gawk \
    -v src_path=$1/ \
    '{
      print src_path $0 " " strftime("%y-%m-%d") "_" NR ".JPG"
    }' | \
  xargs -L1 sh -c 'cp "$1" "$2"' "$0"
}

chpwd () {
  if [ -f package.json ] || [ -f .nvmrc ]
  then
    load-node
  fi

  return 0
}

alias load-node="load-node"
alias tree="tree --filelimit=35 -L 2 --dirsfirst --noreport -I 'node_modules|package-lock.json'"
