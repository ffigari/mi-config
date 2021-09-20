load-node () {
  [ -z nvm ] && unset -f nvm
  [ -z node ] && unset -f node
  [ -z npm ] && unset -f npm

  source /usr/share/nvm/init-nvm.sh
  [ -f .nvmrc ] && nvm use || true

  return 0
}

