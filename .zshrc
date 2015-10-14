# Path to your oh-my-zsh installation.
export ZSH=$HOME/dotfiles/zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="alexlouden-pure"

# ENABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
  git
  brew
  vagrant
  python
  sublime
  zsh-history-substring-search
)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh
source $HOME/.paths
source $HOME/.aliases

# locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# # travis
# [ -f /Users/alex/.travis/travis.sh ] && source /Users/alex/.travis/travis.sh