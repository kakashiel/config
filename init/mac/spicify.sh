#! /bin/sh
curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
curl -fsSL https://raw.githubusercontent.com/CharlieS1104/spicetify-marketplace/main/install.sh | sh
source $ZDOTDIR
source ~/.zshrc
spicetify config extensions autoSkipVideo.js keyboardShortcut.js popupLyrics.js
spicetify apply


