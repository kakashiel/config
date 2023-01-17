#! /bin/sh
if [ -d "$MYPERSO/credentials" ]; then
  source  $MYPERSO/credentials/zshrc
fi

if [ ! -d "$MYPERSO/credentials" ]; then
  echo "creds project does not exist."
fi

