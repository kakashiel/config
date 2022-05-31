#! /bin/bash

# Typescript
npm install -g \
  typescript \
  typescript-language-server \
  eslint \
  prettier 
# Graphql lsp
npm i graphql-language-service-server

# Bash
npm install -g shellcheck

# Glow: pretty print markdown
brew install glow

# Java
brew install java clang-format
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# terraform
brew install hashicorp/tap/terraform-ls

# Grammarly
npm i -g @emacs-grammarly/grammarly-languageserver
