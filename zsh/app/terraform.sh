#!/bin/bash

if ! [ -x "$(command -v terraform)" ]; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew tap hashicorp/tap
    brew install hashicorp/tap/terraform
  fi
  terraform -install-autocomplete
fi
alias t="terraform"
alias terra="terraform"

