
#oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install all the things
./brew.sh
./brew-cask.sh

# install npm packages
npm install trash

# karabiner settings
./karabiner-import.sh

# test installs
git --version
node -v
npm -v
