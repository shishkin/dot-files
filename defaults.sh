#!/usr/bin/env bash

sudo -v

# Finder
defaults write com.apple.finder AppleShowAllExtensions -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder CreateDesktop -bool false
defaults write com.apple.finder WarnOnEmptyTrash -bool false
defaults write com.apple.finder QuitMenuItem -bool true
defaults write com.apple.finder ShowStatusBar -bool true
# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -int 0
# Use column view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string clmv

# .DS_Store
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock showhidden -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.Dock orientation -string left
defaults write com.apple.dock tilesize -int 48

# Bottom right hot corner starts screen saver
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0

# Dashboard
defaults write com.apple.dashboard db-enabled-state -int 2

# Menu bar clock format
defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM d HH:mm"

# Menu bar icons
defaults write com.apple.systemuiserver menuExtras -array \
  "/System/Library/CoreServices/Menu Extras/Clock.menu" \
  "/System/Library/CoreServices/Menu Extras/Battery.menu" \
  "/System/Library/CoreServices/Menu Extras/AirPort.menu" \
  "/System/Library/CoreServices/Menu Extras/TextInput.menu" \
  "/System/Library/CoreServices/Menu Extras/Volume.menu" \
  "/System/Library/CoreServices/Menu Extras/Displays.menu"

# Interface
defaults write -g AppleInterfaceStyle Dark

# Disable sound effects
sudo nvram SystemAudioVolume=" "
defaults write -g com.apple.sound.beep.feedback -int 0
defaults write -g com.apple.sound.beep.flash -int 0
defaults write -g com.apple.sound.uiaudio.enabled -int 0

# Screensaver
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Use F1.. keys without Fn key
defaults write -g com.apple.keyboard.fnState -bool true

# Disable autocorrect
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Trackpad
defaults -currentHost write -g com.apple.mouse.tapBehavior -int 1
defaults -currentHost write -g com.apple.trackpad.threeFingerTapGesture -int 2

defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# System Preferences
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Zoom
sudo defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
sudo defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

# Locale
defaults write -g AppleLanguages -array "en-SG" "ru"
defaults write -g AppleLocale -string "en_SG"

# Apps
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults write com.apple.Safari HomePage -string "about:blank"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write -g WebKitDeveloperExtras -bool true

defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false

for app in "Dock" "Finder" "SystemUIServer"; do
    killall -HUP "${app}"
done
