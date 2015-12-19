
#oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
cp ./undefined.zsh-theme ~/.oh-my-zsh/themes

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install all the things
./brew.sh
./brew-cask.sh

# install npm packages
npm install trash
npm install --global psi

# install solarized theme for terminal(requires to be set as default in Preferences)
open -a Terminal ./solarized-dark-xterm-256color.terminal

# karabiner settings
./karabiner-import.sh

# test installs
git --version
node -v
npm -v
