#!/bin/bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ScarletFloppy/configs/zsh/zshrc > ~/.zshrc)"
sh -c "$(curl -fsSL https://raw.github.com/ScarletFloppy/configs/zsh/custom-lambda.zsh-theme > ~/oh-my-zsh/themes/custom-lambda.zsh-theme)"
sudo echo "/bin/zsh" >> /etc/shells
sudo echo "/usr/local/bin/zsh" >> /etc/shells
sudo chsh -s /usr/local/bin/zsh
defaults write com.apple.Terminal "Default Window Settings" Pro
exit 0
