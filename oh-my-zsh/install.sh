#!/bin/bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ScarletFloppy/configs/oh-my-zsh/zshrc > ~/.zshrc)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ScarletFloppy/configs/oh-my-zsh/custom-lambda.zsh-theme > ~/oh-my-zsh/themes/custom-lambda.zsh-theme)"
sudo echo "/bin/zsh" >> /etc/shells
sudo echo "/usr/local/bin/zsh" >> /etc/shells
sudo chsh -s /usr/local/bin/zsh
export SETUP_OH-MY-ZSH=true
exit 0