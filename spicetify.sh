#! /bin/sh
# brew install khanhas/tap/spicetify-cli
curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
curl -fsSL https://raw.githubusercontent.com/CharlieS1104/spicetify-marketplace/main/install.sh | sh

spicetify config extensions autoSkipVideo.js && \
spicetify config extensions keyboardShortcut.js && \
spicetify config extensions popupLyrics.js && \
spicetify backup apply && \
spicetify apply


