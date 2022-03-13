#With brew install z
if [[ -z "${OLD_BREW}" ]]; then
  MY_SCRIPT_VARIABLE="Some default value because DEPLOY_ENV is undefined"
. /opt/homebrew/etc/profile.d/z.sh
else
. /usr/local/etc/profile.d/z.sh
fi

