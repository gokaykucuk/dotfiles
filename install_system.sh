# Update debian
sudo apt update
# Upgrade debian
sudo apt upgrade
# Install most used libraries
sudo apt-get install \
  build-essential \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg2 \
  software-properties-common \

# Install Homebrew on Linux
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# Inject to path
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
# Install thefuck
brew install thefuck
# Install docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/debian \
  $(lsb_release -cs) \
  stable" 

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Increase file watchers limit
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
