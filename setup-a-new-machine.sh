
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
cp ./undefined.zsh-theme ~/.oh-my-zsh/themes

# removes last login message on terminal opening
touch ~/.hushlogin

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install all the things
./brew.sh
./brew-cask.sh

# Node Version Manager - https://github.com/creationix/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
# https://github.com/nvm-sh/nvm#troubleshooting-on-macos
. ~/.nvm/nvm.sh

mkdir ~/.vim/backup//
mkdir ~/.vim/swap//
mkdir ~/.vim/undo//

# install npm packages
npm install --global trash
npm install --global psi

# install solarized theme for terminal(requires to be set as default in Preferences)
open -a Terminal ./solarized-dark-xterm-256color.terminal

# install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm

# karabiner settings
./karabiner-import.sh

# test installs
git --version
node -v
npm -v
