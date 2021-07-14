export MYDOC=~/Documents
export MYWORK=$HOME/work
export MYPERSO=$MYDOC/perso
export MYCONF=$MYPERSO/config

#Settings
source $MYCONF/zsh/settings/function.sh

#Plugin
#source $MYCONF/zsh/antigen.sh
source $MYCONF/zsh/zinit.sh
source $MYCONF/zsh/adrien.sh


#App
source $MYCONF/zsh/app/git.sh
source $MYCONF/zsh/app/npm.sh
source $MYCONF/zsh/app/python.sh
source $MYCONF/zsh/app/android.sh
source $MYCONF/zsh/app/pass.sh
source $MYCONF/zsh/app/tmux.sh
source $MYCONF/zsh/app/z.sh
source $MYCONF/zsh/app/fzf.sh

