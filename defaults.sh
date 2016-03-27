#!/usr/bin/env bash

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles TRUE

# Hide desktop icons
defaults write com.apple.finder CreateDesktop -bool false

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Only show active apps in dock
defaults write com.apple.dock static-only -bool true

# Put dock on the left side
defaults write com.apple.Dock orientation -string left

# Auto-hide dock
defaults write com.apple.dock autohide -bool true

# Make dock tiles smaller
defaults write com.apple.dock tilesize -int 48

# Menu bar clock format
defaults write com.apple.menuextra.clock DateFormat -string "EEE HH:mm"

# Disable sound effects
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

# Show volume in menu bar
open '/System/Library/CoreServices/Menu Extras/Volume.menu'

# Use F1.. keys without Fn key
defaults write -g com.apple.keyboard.fnState -bool true

for app in "Dock" "Finder" "SystemUIServer"; do
    killall "${app}"
done
