#!/bin/bash

brew cask install \
    firefox \
    google-chrome \
    tunnelblick \
    virtualbox \
    docker \
    iterm2 \
    visual-studio-code \
    intellij-idea \
    steam \
    spotify \
    slack \
    whatsapp \
    zoomus \
    spectacle \
    miro-formerly-realtimeboard \
    syncthing

brew tap cjbassi/ytop

brew install \
    node \
    python \
    npm \
    vim \
    oath-toolkit \
    fzf \
    bat \ #fancy cat
    ccat \ #color cat
    ripgrep \
    the_silver_searcher \
    fd \
    ytop \ #Super fast top
    glances \ #best htop
    coreutils \ #The GNU Core Utilities are the basic file, shell and text manipulation utilities
    nnn \
    ranger \
    lazygit \
    lazydocker \
    ncdu \
    z \
    gpg \
    git-crypt

npm install -g \
    tldr

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

