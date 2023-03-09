# Load antigen
source $HOME/.antigen/antigen.zsh

# Load oh-my-zsh
antigen use oh-my-zsh

# Plugins
antigen bundle git
antigen bundle command-not-found
antigen bundle dirhistory
antigen bundle history
antigen bundle jsontools
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Theme
antigen theme candy

# Apply antigen configuration
antigen apply

# Aliases
alias la="ls -A"
