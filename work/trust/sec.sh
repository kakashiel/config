echo "Phoenix: GitHub: `oathtool -w 0 --totp -b XPSUFH4FAW2NLZCU`"
echo "Phoenix: learning: `oathtool -w 0 --totp -b 3D7E7IVAZQP5ZR43`"
echo "Okata Admin account: `oathtool -w 0 --totp -b AVWP53BRWXCBOALD`"

if [ "$(uname)" == "Darwin" ]; then
  oathtool -w 0 --totp -b 65RSUX4Y2ENDNWLT | tr -d '\n' | pbcopy
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo 'Copyboard on linux not done'
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
  echo "Copyboard on windobe not done"
fi
