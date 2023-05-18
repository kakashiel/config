#!/usr/bin/osascript 

# tell application "System Events"
#     keystroke "e" using {command down, option down, control down}
# end tell

tell application "Google Chrome"
      activate
      open location "http://www.local.booking.gov.sg:3000/admin/events"
      delay 3
      activate
end tell
tell application "System Events"
  keystroke "f"
  delay 0.1
  keystroke "f"
  delay 0.1
  keystroke return
  delay 0.1
# Title Event
  keystroke "f"
  delay 0.1
  keystroke "l"
  delay 0.1
  keystroke return
  delay 0.1
  keystroke "service"
  delay 0.1
  key code 53 #escape
  delay 0.2
#Select service
  keystroke "f"
  delay 0.1
  keystroke "p"
  delay 0.1
  keystroke space
  delay 0.1
  keystroke "n" using control down
  delay 0.1
  keystroke return
  delay 0.1
  key code 53 #escape
  delay 1
#Going down
  keystroke "d"
  delay 0.1
#Select calendar
  keystroke "f"
  delay 0.1
  keystroke "sj"
  delay 0.1
  keystroke "f"
  delay 0.1
  keystroke "p"
  delay 0.1

#Select hour start
  keystroke "f"
  delay 0.1
  keystroke "k"
  delay 0.1
  keystroke "1"
  delay 0.1
  keystroke tab
  delay 0.1
  keystroke "0"
  delay 0.1
  keystroke tab
  delay 0.1
  keystroke space
  delay 0.1
  keystroke "n" using control down
  delay 0.1
  keystroke return
  delay 0.1
  keystroke tab
  delay 0.1
#Select hour end
  keystroke "2"
  delay 0.1
  keystroke "0"
  delay 0.1
  keystroke tab
  delay 0.1
  keystroke space
  delay 0.1
  keystroke "n" using control down
  delay 0.1
  keystroke return
  delay 0.1
end tell

tell application "Terminal"
    quit
    tell application "System Events"
        keystroke return
    end tell
end tell

