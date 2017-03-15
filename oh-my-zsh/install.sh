#!/bin/bash
echo "v1.0 | oh-my-zsh/install.sh"
sname='oh-my-zsh'
themes=~/.$sname/themes
branch='master'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ScarletFloppy/configs/$branch/$sname/zshrc > ~/.zshrc)"
[ -d $themes ] || mkdir -p $themes
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ScarletFloppy/configs/$branch/$sname/custom-lambda.zsh-theme > $themes/custom-lambda.zsh-theme)"
echo "Changing default shells, password usually required"
sudo bash -c 'echo "/bin/zsh" >> /etc/shells'
sudo bash -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
chsh -s /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/$sname/master/tools/install.sh)"
export set SETUP_OH_MY_ZSH="true"
exit 0
