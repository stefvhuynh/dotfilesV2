# Dotfiles V2

This repo is similar to my original dotfiles repo but is simplified to only include the devtools and
dotfiles. Running the installation script will download the appropriate devtools and symlink the
dotfiles to your `$HOME` directory. Use this to setup a new development machine.

## Installation and Uninstallation

To install the dotfiles, which simply symlinks the repo's files to your `$HOME` directory, run

```bash
bash bin/install.sh
```

To uninstall, run

```bash
bash bin/uninstall.sh
```

Alternatively, you can `chmod` these files to make them executable and run them without the `bash`
command.

## Devtools

1. homebrew
2. antigen (zsh package manager)
