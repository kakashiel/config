#! /bin/sh

if [ "$ISWORK" != "true" ]; then
  return 1;
fi

if [ -d "$MYPERSO/work-credentials" ]; then
  source  $MYPERSO/work-credentials/zshrc
fi

if [ ! -d "$MYPERSO/work-credentials" ]; then
  echo "Credentials work project does not exist. \
    (add ISWORK=false in ~/.zshrc to ignore)"
fi

