#! /bin/sh
# NPM completions
source $MYCONF/zsh/plugins-copy/npm.sh

alias npmi="npm i"
alias npms="npm run start"
alias npmlo="npm run logs"
alias npmli="npm run lint"
alias npmt="npm run test"
alias npmtf="npm run test:functional"

alias yarni="yarn install"


#Lazy load nvm
#https://stackoverflow.com/questions/47009776/how-to-run-nvm-in-oh-my-zsh
# lazynvm() {
#   unset -f nvm node npm
#   export NVM_DIR=~/.nvm
#   [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# }

# nvm() {
#   lazynvm 
#   nvm $@
# }

# node() {
#   lazynvm
#   node $@
# }

# npm() {
#   lazynvm
#   npm $@
# }
