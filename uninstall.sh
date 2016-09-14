#!/bin/bash

function die() {
  echo "${@}"
  exit 1
}

for rc in "vimrc.after" "vimrc.before" "ackrc"; do
  unlink "${Home}/.${rc}"
done

rm -rf "${HOME}/.janus" || die "Can't remove .janus"

echo "Uninstall .janus is done!"
