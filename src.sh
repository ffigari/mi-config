#!/bin/bash

storage_dir=$(pwd)/dotfiles/

dotfiles_paths=(
  .vimrc
  .zshrc
  .gitconfig
  .i3/config
)

move_files_around () {
  usage () {
    echo Usage
    echo "  ./move_files_around.sh <direction>"
    echo "  with '<direction>' being 'retrieve' or 'deploy'"
  }
  
  [[ -z ${1-} ]] && usage && exit 1
  if [ "${1-}" != 'retrieve' ] && [ "${1-}" != 'deploy' ]; then
    usage && exit 1
  fi

  for file_path in ${dotfiles_paths[*]}
  do
    existing=$HOME/$file_path
    stored=${storage_dir}${file_path}
    if [ "${1-}" == 'retrieve' ]; then
      mkdir -p $(dirname $stored)
      cp $existing $stored
    else
      mkdir -p $(dirname $existing)
      cp $stored $existing
    fi
  done
}
