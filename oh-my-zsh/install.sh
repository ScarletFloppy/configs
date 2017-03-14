#!/bin/bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ScarletFloppy/configs/master/oh-my-zsh/zshrc > ~/.zshrc)"
[ -d ~/.oh-my-zsh/themes ] || mkdir -p ~/.oh-my-zsh/themes
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ScarletFloppy/configs/master/oh-my-zsh/custom-lambda.zsh-theme > ~/oh-my-zsh/themes/custom-lambda.zsh-theme)"
sudo echo "/bin/zsh" >> /etc/shells
sudo echo "/usr/local/bin/zsh" >> /etc/shells
chsh -s /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
export set SETUP_OH-MY-ZSH="true"
exit 0