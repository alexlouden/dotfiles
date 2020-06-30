# Path to your oh-my-zsh installation.
export ZSH=$HOME/dotfiles/zsh

# Set name of the theme to load.
ZSH_THEME="alexlouden-pure"

# ENABLE_CORRECTION="true"

export ZSH_LAZY_NVM_BINARIES=('nvm' 'npm' 'node' 'yarn')

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
  git
  brew
  # vagrant
  python
  # sublime
  zsh-history-substring-search
  heroku
  terraform
  # aws
)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Disable autoupdate
DISABLE_UPDATE_PROMPT=true

source $ZSH/oh-my-zsh.sh
source $HOME/.paths
source $HOME/.aliases

# locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# # travis
# [ -f /Users/alex/.travis/travis.sh ] && source /Users/alex/.travis/travis.sh

# Fix progress bars
export COLUMNS

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# no more replay
disable r

# GPG git
export GPG_TTY=$(tty)

# Async zsh
# https://github.com/nvm-sh/nvm/issues/539#issuecomment-403661578
source ~/.zsh-async/async.zsh

export NVM_DIR="$HOME/.nvm"
function load_nvm() {
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}

# Initialize worker
async_start_worker nvm_worker -n
async_register_callback nvm_worker load_nvm
async_job nvm_worker sleep 0.1


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
