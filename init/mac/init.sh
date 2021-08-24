#!/bin/bash
sudo chown -R $(whoami) /usr/local/var/homebrew
sudo chown -R $(whoami) /usr/local/Cellar


#Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

source ./install_app.sh
source ./install.sh

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

