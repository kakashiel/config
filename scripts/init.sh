#!/bin/sh
# Alias specifc to an OS
case "$(uname -s)" in
  Darwin) # echo 'Mac OS X'
    alias airpod=". $MYCONF/scripts/ios/audio_air_pod.sh"
    alias speaker=". $MYCONF/scripts/ios/audio_mac_speaker.sh"
    ;;
  Linux)
    alias ls='ls --color=auto'
    ;;
  CYGWIN* | MINGW32* | MSYS* | MINGW*)# echo 'MS Windows'
    ;;
  *)
    # echo 'Other OS'
    ;;
esac
