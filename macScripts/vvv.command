#! /bin/zsh
source ~/.zshrc
vpn
#Just close the window
# osascript -e 'tell application "Terminal" to close (every window whose name contains "vvv.command")' &
# Colse Terminal
{sleep 0.5 && \
  osascript -e 'tell application "/Applications/Tunnelblick.app" to activate' && \
  # osascript -e 'tell application "/Applications/iTerm.app" to activate' && \
  osascript -e 'tell application "System Events" to keystroke "v" using command down' && \
  osascript -e 'tell application "System Events" to key code 36' && \
} & disown
osascript -e 'tell application "Terminal" to quit' &
