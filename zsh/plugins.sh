# COMPLETIONS
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-autosuggestions"
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.


# HISTORY SUBSTRING SEARCHING
zsh_add_plugin "zsh-users/zsh-history-substring-search"
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "^p" up-line-or-beginning-search # Up
bindkey "^n" down-line-or-beginning-search # Down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

#VIM
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins 'kj' vi-cmd-mode

#GIT

# Load Git completion
zstyle ':completion:*:*:git:*' script $ZDOTDIR/plugins-copy/git-completion.zsh
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit
