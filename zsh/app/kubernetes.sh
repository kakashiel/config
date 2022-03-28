#! /bin/sh

lazykubectl() {
  unset -f kubectl 2>/dev/null
  export KUBECONFIG=./kubeconfig:~/.kube/config 
  source <(kubectl completion zsh)
}

kubectl() {
  lazykubectl 
  kubectl $@
}





if ! [ -x "$(command -v aws)" ]; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install kubectl
  fi
else
  alias k="kubectl"
fi

