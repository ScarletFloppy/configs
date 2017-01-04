#!/bin/bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ScarletFloppy/configs/zshrc > ~/.zshrc)"
sudo echo "/bin/zsh" >> /etc/shells
sudo echo "/usr/local/bin/zsh" >> /etc/shells
sudo chsh -s /usr/local/bin/zsh
exit 0
