#!/bin/bash

function die() {
  echo "${@}"
  exit 1
}

function link_file() {
  ln -s "${HOME}/.janus/rcs/${@}" "${HOME}/.${@}" || die "Could not link ${@} @ to .${@}"
  echo ".${@} has been linked to .janus/rcs/${@}"
}

git clone --recursive https://github.com/khusnetdinov/.janus.git "${HOME}/.janus" \
  || die "Could not clone the repository to ${HOME}/.janus"

for rc in "${HOME}/.janus/rcs/*"; do
  link_file rc
done

