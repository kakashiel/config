#!/usr/bin/osascript

#brew install switchaudio-osx
#Get the list with
#SwitchAudioSource -a

do shell script "/usr/local/bin/SwitchAudioSource -s 'Adrien’s AirPods Pro #3'"
#do shell script "/usr/local/bin/SwitchAudioSource -s 'MacBook Pro Speakers'"

#tell application "System Preferences" to quit

tell application "Terminal"
    quit
    tell application "System Events"
    keystroke return
    end tell
end tell


