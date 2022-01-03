export MYDOC=~/Documents
export MYWORK=$HOME/work
export MYPERSO=$MYDOC/perso
export MYCONF=$MYPERSO/config

#Settings
source $MYCONF/zsh/settings/function.sh
source $MYCONF/zsh/settings/options.sh

source $MYCONF/zsh/exports.sh
source $MYCONF/zsh/alias.sh
source $MYCONF/zsh/symlinks.sh

#Plugin
source $MYCONF/zsh/zinit.sh
source $MYCONF/zsh/plugins.sh

#App
source $MYCONF/zsh/app/git.sh
source $MYCONF/zsh/app/npm.sh
source $MYCONF/zsh/app/python.sh
source $MYCONF/zsh/app/android.sh
source $MYCONF/zsh/app/pass.sh
source $MYCONF/zsh/app/tmux.sh
source $MYCONF/zsh/app/z.sh
source $MYCONF/zsh/app/fzf.sh

