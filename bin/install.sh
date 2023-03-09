#!/bin/sh

. ./bin/vars.sh
. ./bin/utils.sh

main()
{
    # Install homebrew
    dotfiles_echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL $homebrew_install_url)"

    # Install antigen
    dotfiles_echo "Installing antigen..."
    mkdir $antigen_path
    curl -L $antigen_url > $antigen_path/antigen.zsh

    # zsh symlinks
    for file in ${dotfiles[@]}; do
      root="$root_path/$file"
      dest="$HOME/$file"

      dotfiles_echo "Linking ${root} to ${dest}"
      ln -s ${root} ${dest}
    done
}

main
