#icu4c is keg-only, which means it was not symlinked into /usr/local,
#because macOS provides libicucore.dylib (but nothing else).

#If you need to have icu4c first in your PATH run:
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

#For compilers to find icu4c you may need to set:
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"

export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

alias npms="npm run start"
alias npml="npm run logs"
alias npmt="npm run test"
alias npmtf="npm run test:functional"
