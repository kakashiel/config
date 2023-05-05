#!/bin/sh

if ! command -v SwitchAudioSource &> /dev/null
then
    echo "SwitchAudioSource could not be found, install it now"
    brew install switchaudio-osx
    #Get the list with
    echo "List of audio: "
    SwitchAudioSource -a
fi

osascript -e "do shell script \"/usr/local/bin/SwitchAudioSource -s 'MacBook Pro Speakers'\""


