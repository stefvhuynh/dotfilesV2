#!/bin/sh

. ./bin/vars.sh
. ./bin/utils.sh

main ()
{
  # Uninstall Homebrew
  dotfiles_echo "Uninstalling Homebrew..."
  /bin/bash -c "$(curl -fsSL $homebrew_uninstall_url)"

  # Uninstall Antigen
  dotfiles_echo "Uninstalling Antigen..."
  rm -rf $antigen_path

  # Uninstall Volta
  dotfiles_echo "Uninstalling Volta..."
  rm -rf $volta_path

  # zsh symlinks
  for file in ${dotfiles[@]}; do
    dest="$HOME/$file"

    dotfiles_echo "Removing symlink at ${dest}"
    rm ${dest}
  done
}

main
