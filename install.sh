#!/bin/bash

function die()
{
  echo "${@}"
  exit 1
}

# Clone Janus into .janus
git clone --recursive https://github.com/khusnetdinov/.janus.git "${HOME}/.janus" \
  || die "Could not clone the repository to ${HOME}/.janus"

# Add .vimrc files to the home directory
for vimrc in "vimrc.after" "vimrc.before"; do
  ln -s "${HOME}/.janus/rcs/${vimrc}" "${HOME}/.${vimrc}" || die "Could not link ${vimrc} file to .${vimrc}"
  echo ".${vimrc} has been linked to .janus ${vimrc}"
done
