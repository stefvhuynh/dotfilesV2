#!/bin/sh

. ./bin/vars.sh
. ./bin/utils.sh

main () 
{
  # Uninstall homebrew
  dotfiles_echo "Uninstalling homebrew..."
  /bin/bash -c "$(curl -fsSL $homebrew_uninstall_url)"

  # Uninstall antigen
  dotfiles_echo "Uninstalling antigen..."
  rm -rf $antigen_path

  # zsh symlinks
  for file in ${dotfiles[@]}; do
    dest="$HOME/$file"

    dotfiles_echo "Removing symlink at ${dest}"
    rm ${dest}
  done
}

main