#!/usr/bin/env bash

# Finder
defaults write com.apple.finder AppleShowAllFiles TRUE
# Hide desktop icons
defaults write com.apple.finder CreateDesktop -bool false
defaults write com.apple.finder WarnOnEmptyTrash -bool false
defaults write com.apple.finder QuitMenuItem -bool true
# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -int 0
defaults write com.apple.finder AppleShowAllExtensions -bool true
# Use column view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string clmv

# Dock
defaults write com.apple.dock showhidden -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.Dock orientation -string left
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -int 48

# Bottom right hot corner starts screen saver
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0

# Menu bar clock format
defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM d HH:mm"

# Disable sound effects
defaults write -g com.apple.sound.beep.feedback -int 0
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

# Show volume in menu bar
open '/System/Library/CoreServices/Menu Extras/Volume.menu'

# Use F1.. keys without Fn key
defaults write -g com.apple.keyboard.fnState -bool true

# Disable autocorrect
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

#Tap to click
defaults -currentHost write -globalDomain com.apple.mouse.tapBehavior -int 1

defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Apps
defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE

for app in "Dock" "Finder" "SystemUIServer"; do
    killall -HUP "${app}"
done
