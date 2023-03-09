#!/bin/sh

. ./bin/vars.sh
. ./bin/utils.sh

main()
{
    # Install Homebrew
    dotfiles_echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL $homebrew_install_url)"

    # Install Antigen
    dotfiles_echo "Installing Antigen..."
    mkdir $antigen_path
    curl -L $antigen_url > $antigen_path/antigen.zsh

    # Install Volta
    dotfiles_echo "Installing Volta..."
    curl $volta_url | bash -s -- --skip-setup

    # zsh symlinks
    for file in ${dotfiles[@]}; do
      root="$root_path/$file"
      dest="$HOME/$file"

      dotfiles_echo "Linking ${root} to ${dest}"
      ln -s ${root} ${dest}
    done
}

main
