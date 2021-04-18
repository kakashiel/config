#Activate antigen with brew
source $(brew --prefix)/share/antigen/antigen.zsh

source "$HOME/.antigen/antigen.zsh"
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
#antigen bundle heroku
#antigen bundle pip
#antigen bundle lein
#antigen bundle iterm2
antigen bundle command-not-found
antigen bundle docker
antigen bundle docker-compose
antigen bundle tig
antigen bundle terraform
antigen bundle tmux
antigen bundle kubectl
antigen bundle git-auto-fetch
GIT_AUTO_FETCH_INTERVAL=1200 #in seconds
antigen bundle terraform
antigen bundle osx
antigen bundle z
antigen bundle paulirish/git-open


# Syntax highlighting bundle.
# antigen bundle zsh-users/zsh-syntax-highlighting
#antigen bundle zsh-users/zsh-autosuggestions 
antigen bundle zsh-users/zsh-completions

# Load the theme.
antigen theme romkatv/powerlevel10k
#ZSH_THEME="powerlevel10k/powerlevel10k"
# antigen theme robbyrussell 

antigen apply
