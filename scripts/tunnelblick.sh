# IT NOT WORKING YET
# https://ifritltd.com/2018/01/15/automating-vpn-connection-when-using-multifactor-authentication-with-tunnelblick-on-macos/

echo "adrien_loustaunau\n`oathtool \
  --totp -b 3VIY4FMVT5G7NPGP`" > /Users/Adrien/.tunnelblick_auth.txt

osascript -e "tell application \"/Applications/Tunnelblick.app\"" -e "connect \"config\"" -e "end tell"
