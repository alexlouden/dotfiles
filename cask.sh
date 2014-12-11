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
  divvy          # Window manager
  transmission   # Torrent client
  vlc            # Media player

  # Developer tools
  dash           # Offline documentation
  mou            # Markdown editor
  sourcetree     # Git GUI
  transmit       # FTP GUI
  qlcolorcode    # Quicklook syntax highlighting
  qlmarkdown     # Quicklook markdown "
  quicklook-json # Quicklook json "
  
  # VMs
  vmware-fusion
  vagrant
)

echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Fix Alfred so it'll search for cask installed apps
brew cask alfred link

# Vagrant with Fusion
# vagrant plugin install vagrant-vmware-fusion
# TODO put license somewhere?
# vagrant plugin license vagrant-vmware-fusion license.lic
