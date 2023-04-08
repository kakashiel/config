#! /bin/sh

#Symlink npm config user
ln -f $MYCONF/npm/npmrc ~/.npmrc
# NPM completions

alias npmi="npm i"
alias npms="npm run start"
alias npmlo="npm run logs"
alias npmli="npm run lint"
alias npmt="npm run test"
alias npmtf="npm run test:functional"

alias yarni="yarn install"

lazynvm() {
  source $MYCONF/zsh/plugins-copy/npm.sh
  unset -f nvm node npm npx 2>/dev/null
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
  if [ -f "$NVM_DIR/bash_completion" ]; then
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
  fi
}

nvm() {
  lazynvm 
  nvm $@
}

node() {
  lazynvm
  node $@
}

npm() {
  lazynvm
  npm $@
}

npx() {
  lazynvm
  npx $@
}

