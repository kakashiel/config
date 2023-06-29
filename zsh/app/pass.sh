#! /bin/sh

if ! command -v pass &> /dev/null; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install \
      pass \
      pass-otp
  fi
else
  # alias k="kubectl"
fi

export PASSWORD_STORE_DIR=$MYPERSO/.password-store
