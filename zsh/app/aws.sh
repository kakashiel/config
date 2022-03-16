#! /bin/sh

if ! [ -x "$(command -v aws)" ]; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install awscli
    brew install eksctl
  fi
else
  complete -C '/opt/homebrew/bin/aws_completer' aws
  source <(eksctl completion zsh)
fi


