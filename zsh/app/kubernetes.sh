#! /bin/sh

if ! [ -x "$(command -v aws)" ]; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install kubectl
  fi
else
  alias k="kubectl"
  export KUBECONFIG=./kubeconfig:~/.kube/config 
  source <(kubectl completion zsh)
fi
