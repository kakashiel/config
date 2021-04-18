export MYDOC=~/Documents
export MYWORK=$MYDOC/work
export MYPERSO=$MYDOC/perso
export MYCONF=$MYPERSO/config

#Plugin
#source $MYCONF/zsh/antigen.zshrc
source $MYCONF/zsh/zinit.zshrc
source $MYCONF/zsh/adrien.zshrc

#Settings
source $MYCONF/zsh/settings/function.zshrc

#App
source $MYCONF/zsh/app/npm.zshrc
source $MYCONF/zsh/app/android.zshrc
source $MYCONF/zsh/app/pass.zshrc
source $MYCONF/zsh/app/tmux.zshrc
source $MYCONF/zsh/app/python.zshrc
source $MYCONF/zsh/app/z.zshrc
source $MYCONF/zsh/app/fzf.zshrc
#P10K at the end
source $MYCONF/zsh/app/p10k_init.zshrc
source $MYCONF/zsh/app/p10k.zshrc

