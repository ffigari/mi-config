load-node () {
  [ -z nvm ] && unset -f nvm
  [ -z node ] && unset -f node
  [ -z npm ] && unset -f npm

  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  [ -f .nvmrc ] && nvm use || true

  return 0
}

