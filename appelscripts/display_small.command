#!/usr/bin/osascript

do shell script "echo The value: "

tell application "System Preferences"
 activate
 set current pane to pane "com.apple.preference.displays"
end tell

tell application "System Events"
  keystroke "f" using control down
  delay 1
  keystroke "am" 
  delay 1
  keystroke "f" using control down
end tell

#quit application "System Preferences"

#tell application "System Preferences" to quit

tell application "Terminal"
    quit
    tell application "System Events"
        keystroke return
    end tell
end tell

