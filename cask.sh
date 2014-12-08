apps=(
  
  google-chrome
  firefox
  
  dropbox
  slack
  
  alfred
  divvy
  mou
  
  qlcolorcode
  qlmarkdown
  quicklook-json
  
  transmit
  transmission
  vlc
  
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
