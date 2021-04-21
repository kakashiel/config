export MYDOC=~/Documents
export MYWORK=$MYDOC/work
export MYPERSO=$MYDOC/perso
export MYCONF=$MYPERSO/config

#Plugin
#source $MYCONF/zsh/antigen.sh
source $MYCONF/zsh/zinit.sh
source $MYCONF/zsh/adrien.conf

#Settings
source $MYCONF/zsh/settings/function.sh

#App
source $MYCONF/zsh/app/npm.sh
source $MYCONF/zsh/app/python.sh
source $MYCONF/zsh/app/android.sh
source $MYCONF/zsh/app/pass.sh
source $MYCONF/zsh/app/tmux.sh
source $MYCONF/zsh/app/z.sh
source $MYCONF/zsh/app/fzf.sh

