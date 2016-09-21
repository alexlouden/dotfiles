echo "installing cask"
brew install caskroom/cask/brew-cask

apps=(

  # Web browsers
  google-chrome
  firefox

  # General
  dropbox        # Backup and shared folders
  slack          # Team chat
  alfred         # Shortcut utility
  vlc            # Media player

  # Developer tools
  dash           # Offline documentation
  qlcolorcode    # Quicklook syntax highlighting
  qlmarkdown     # Quicklook markdown "
  quicklook-json # Quicklook json "
)

echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}
