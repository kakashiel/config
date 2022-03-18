#! /bin/sh

if ! [ -x "$(command -v aws)" ]; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install kubectl
  fi
else
  alias k="kubectl"
  export KUBECONFIG=~/.kube/config:~/.kube/kubconfig2 
  source <(kubectl completion zsh)
fi
