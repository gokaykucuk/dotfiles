# Update debian
sudo apt update
# Upgrade debian
sudo apt upgrade
# Install most used libraries
sudo apt-get install build-essential
# Install Homebrew on Linux
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# Inject to path
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
# Install thefuck
brew install thefuck

