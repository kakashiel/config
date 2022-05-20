#! /bin/sh

# if ! [ -x "$(command -v kubectl)" ]; then
if ! command -v kubectl &> /dev/null; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install kubectl
  fi
else
  alias k="kubectl"
fi

lazykubectl() {
  unset -f kubectl 2>/dev/null
  export KUBECONFIG=./kubeconfig:~/.kube/kubeconfig:~/.kube/config 
  source <(kubectl completion zsh)
}

kubectl() {
  lazykubectl 
  kubectl $@
}


