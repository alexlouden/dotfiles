# Path to your oh-my-zsh installation.
export ZSH=$HOME/dotfiles/zsh

source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Set name of the theme to load.
ZSH_THEME="alexlouden-pure"

# ENABLE_CORRECTION="true"

export ZSH_LAZY_NVM_BINARIES=('nvm' 'npm' 'node' 'yarn')

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
  git
  brew
  pyenv
  nvm
  python
  # heroku
  # terraform
  # aws
  # poetry
)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Disable autoupdate
DISABLE_UPDATE_PROMPT="true"
DISABLE_AUTO_UPDATE="true"

zstyle ':omz:plugins:nvm' lazy yes
zstyle ':omz:plugins:nvm' autoload yes
zstyle ':omz:plugins:nvm' silent-autoload yes  # Optional: suppress "Now using node..." messages

# pyenv is installed via homebrew, use full path
eval "$(/opt/homebrew/bin/pyenv init -)"

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

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

# no more replay
disable r

# GPG git
export GPG_TTY=$(tty)

# Async zsh
# https://github.com/nvm-sh/nvm/issues/539#issuecomment-403661578
# git clone git@github.com:mafredri/zsh-async.git ~/.zsh-async
source ~/.zsh-async/async.zsh

# brew install nvm
export NVM_DIR="$HOME/.nvm"
function load_nvm() {
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
    [ -s "/opt/homebrew/opt/nvm/bash_completion" ] && . "/opt/homebrew/opt/nvm/bash_completion"
}

# Initialize worker
async_start_worker nvm_worker -n
async_register_callback nvm_worker load_nvm
async_job nvm_worker sleep 0.1


# stop it
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_CLEANUP=1

# gcloud
# source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
# source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

setopt NO_SHARE_HISTORY      # don’t write to .zsh_history until the session ends
setopt INC_APPEND_HISTORY    # append only when the session exits