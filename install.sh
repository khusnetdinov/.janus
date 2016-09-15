#!/bin/bash

function die() {
  echo "${@}"
  exit 1
}

git clone --recursive https://github.com/khusnetdinov/.janus.git "${HOME}/.janus" \
  || die "Could not clone the repository to ${HOME}/.janus"

# Add .vimrc files to the home directory
for rc in "vimrc.after" "vimrc.before" "ackrc"; do
  ln -s "${HOME}/.janus/rcs/${rc}" "${HOME}/.${rc}" || die "Could not link ${rc} file to .${rc}"
  echo ".${rc} has been linked to .janus ${rc}"
done

# Add fonts to system
open "${HOME}/.janus/fonts/Meslo/*"
echo "Please add fonts to System and change Iterm Fonts Settings"

