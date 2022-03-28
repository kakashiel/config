#! /bin/sh
if ! [ -x "$(command -v aws)" ]; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install awscli
    brew install eksctl
  fi
fi

lazyaws() {
  unset -f aws 2>/dev/null
  complete -C '/opt/homebrew/bin/aws_completer' aws
  source <(eksctl completion zsh)
}

aws() {
  lazyaws 
  aws $@
}


