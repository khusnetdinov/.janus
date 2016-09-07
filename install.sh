#!/bin/bash

function die()
{
  echo "${@}"
  exit 1
}

# Add .old to any existing Vim file in the home directory
for filepath in "${HOME}/.vim" "${HOME}/.vimrc" "${HOME}/.gvimrc"; do
  if [ -e $filepath ]; then
    mv "${filepath}" "${filepath}.old" || die "Could not move ${filepath} to ${filepath}.old"
    echo "${filepath} has been renamed to ${filepath}.old"
  fi
done

# Clone Janus into .janus
git clone --recursive https://github.com/khusnetdinov/.janus.git "${HOME}/.janus" \
  || die "Could not clone the repository to ${HOME}/.janus"

# Add .vimrc files to the home directory
for vimrc in "vimrc.after" "vimrc.before"; do
  ln -s "${HOME}/.janus/rcs/${vimrc}" "${HOME}/.${vimrc}" || die "Could not link ${vimrc} file to .${vimrc}"
  echo ".${vimrc} has been linked to .janus ${vimrc}"
done
