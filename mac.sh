#!/bin/bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/ScarletFloppy/configs/oh-my-zsh/install.sh)"
defaults write com.apple.Terminal "Default Window Settings" Pro
exit 0
