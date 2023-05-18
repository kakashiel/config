#!/bin/sh
# Alias specifc to an OS
case "$(uname -s)" in
  Darwin) # echo 'Mac OS X'
    alias mute=". $MYCONF/scripts/ios/input_mute.sh"
    alias unmute=". $MYCONF/scripts/ios/input_unmute.sh"
    alias mm="mute"
    alias um="unmute"
    alias speaker=". $MYCONF/scripts/ios/audio_mac_speaker.sh"
    alias input-airpod=". $MYCONF/scripts/ios/audio_air_pod.sh"
    alias airpod="osascript $MYCONF/scripts/ios/bluetooth_airpod.scpt"
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
