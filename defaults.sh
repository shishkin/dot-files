#!/usr/bin/env bash

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles TRUE

# Hide desktop icons
defaults write com.apple.finder CreateDesktop -bool false

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -int 0

# Show all file extensions
defaults write com.apple.finder AppleShowAllExtensions -bool true

# Use column view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string clmv

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Only show active apps in dock
#defaults write com.apple.dock static-only -bool true

# Put dock on the left side
defaults write com.apple.Dock orientation -string left

# Auto-hide dock
defaults write com.apple.dock autohide -bool true

# Make dock tiles smaller
defaults write com.apple.dock tilesize -int 48

# Bottom right hot corner starts screen saver
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0

# Menu bar clock format
defaults write com.apple.menuextra.clock DateFormat -string "EEE HH:mm"

# Disable sound effects
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

# Show volume in menu bar
open '/System/Library/CoreServices/Menu Extras/Volume.menu'

# Use F1.. keys without Fn key
defaults write -g com.apple.keyboard.fnState -bool true

# Disable autocorrect
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

for app in "Dock" "Finder" "SystemUIServer"; do
    killall "${app}"
done
