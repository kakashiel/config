#! /bin/sh

if ! [ -x "$(command -v aws)" ]; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install kubectl
  fi
else
  source <(kubectl completion zsh)
  alias k="kubectl"
fi
