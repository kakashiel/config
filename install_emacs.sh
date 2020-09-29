#!/bin/sh
brew tap d12frosted/emacs-plus
brew install emacs-plus
brew linkapps emacs-plus --HEAD --with-natural-title-bars
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
