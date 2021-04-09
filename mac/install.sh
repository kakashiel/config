#!/bin/bash

brew install --cask google-chrome 
brew install --cask firefox 
brew install --cask tunnelblick 
brew install --cask virtualbox 
brew install --cask docker
brew install --cask iterm2 
brew install --cask visual-studio-code 
brew install --cask intellij-idea 
brew install --cask steam 
brew install --cask spotify 
brew install --cask slack 
brew install --cask whatsapp 
brew install --cask spectacle 
brew install --cask miro 
brew install --cask syncthing

brew tap cjbassi/ytop

brew install antigen
curl -L git.io/antigen > ~/.antigen/antigen.zsh
brew install node
brew install python
brew install npm
brew install vim
brew install oath-toolkit
brew install ripgrep
brew install the_silver_searcher
brew install fd
brew install glances
brew install coreutils
brew install gitui
brew install lazygit
brew install lazydocker
brew install ncdu
brew install z
brew install gpg
brew install fzf
brew install git-crypt

npm install -g \
    tldr

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

