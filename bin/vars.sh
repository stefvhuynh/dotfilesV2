#!/bin/sh

dotfiles=(
  .zshrc
  .zprofile
)
bin_path="$(dirname -- $(readlink -f -- $0))"
root_path="$(dirname $bin_path)"
homebrew_install_url="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
homebrew_uninstall_url="https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh"
antigen_url="git.io/antigen"
antigen_path="$HOME/.antigen"