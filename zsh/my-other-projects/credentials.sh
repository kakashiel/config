#! /bin/sh

if [ "$ISPERSO" != "true" ]; then
  return 1;
fi

if [ -d "$MYPERSO/credentials" ]; then
  source  $MYPERSO/credentials/zshrc
fi

if [ ! -d "$MYPERSO/credentials" ]; then
  echo "Credentials project does not exist. \
     (add ISPERSO=false in ~/.zshrc to ignore)"
fi

