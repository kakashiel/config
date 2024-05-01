#! /bin/sh

# For M1
# if [[ "$OSTYPE" == "darwin"* ]]; then
# if [[ -z "${OLD_BREW}" ]]; then
# eval "$(/opt/homebrew/bin/brew shellenv)"
# fi
# fi
#
#
export PATH=/opt/homebrew/bin/:$PATH

installBrew() {
  sudo chown -R $(whoami) /usr/local/var/homebrew
  sudo chown -R $(whoami) /usr/local/Cellar

  #Install Homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  git -C $(brew --repo homebrew/core) checkout master

  brew analytics off
}


installMacApp() {
  # Add font-hack-nerd-font repo
  brew tap homebrew/cask-fonts

  brew install --cask \
    font-hack-nerd-font \
    firefox \
    docker \
    intellij-idea \
    spotify \
    whatsapp \
    anki \
    kitty \
    raycast \
    google-chrome \
    hammerspoon

  #  virtualbox \
  #  visual-studio-code \
  #  tunnelblick \
  #  steam \
  #  miro \
  #  syncthing \
  #  all-in-one-messenger \
  #  alt-tab #replace by hammerspoon \
  #  rectangle # Replace with hammerspoon \
  #  iterm2 \
  #  slack \

}

installCliApp() {
  #TMUX
  brew install terminal-notifier
  brew install tmux

}

installGitPackages() {
  brew install \
    git \
    gitui \
    lazygit \
    git-gui \
    git-crypt \
    git-extras \
    diff-so-fancy

}

installCorePackages() {
  brew install  \
    node \
    python \
    npm \
    oath-toolkit \
    zoxide \
    gpg \
    bash \
    zsh \
    pure
}

installViPackages() {
  # Need gnu-sed for nvim-pack/nvim-spectre
  brew install \
    universal-ctags \
    fzf \
    ripgrep \
    vim \
    neovim \
    gnu-sed
}

installMisc() {
  #Ncdu visusalise size file
  brew install \
   ncdu \
   htop \
   docker-compose \
   fd \
   speedtest-cli 
}

if ! command -v brew &> /dev/null; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    installBrew
    installMacApp
    installCliApp
    installCorePackages
    installGitPackages
    installViPackages
    installMisc
  fi
else
  fpath+=("$(brew --prefix)/share/zsh/site-functions")
  # alias k="kubectl"
fi

