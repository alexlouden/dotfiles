sudo -v

# Expanding the save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Hiding spotlight search icon
sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disabling smart dashes and quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Ask for password immediately after sleep/screensaver
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Menu bar: show battery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Disabling warning on change file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Setting default finder view to column
defaults write com.apple.finder FXPreferredViewStyle Clmv

# Show hidden files
defaults write com.apple.Finder AppleShowAllFiles -bool true

# Disabling the Time Machine new disk requests dialog
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Don't automatically switch to a Space with open windows for and application when switching to it 
defaults write com.apple.dock workspaces-auto-swoosh -boolean NO

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Trackpad: swipe between pages with two fingers
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true
# TODO three finger drag, two finger page swipe

# Use scroll gesture with the Ctrl (^) modifier key to zoom
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

############################################################
# Transmission settings
mkdir -p ~/Downloads/Incomplete
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/Incomplete"

# Don't prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false

# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

############################################################
# Sublime Text
# Use as git editor
git config --global core.editor "subl -n -w"
