#! /bin/sh

if [[ "$OSTYPE" == "darwin"* ]]; then
  if [[ -z "${OLD_BREW}" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
fi
