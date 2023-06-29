# To install useful key bindings and fuzzy completion:

lazybrew() {
	unset -f brew 2>/dev/null
	$(brew --prefix)/opt/fzf/install
}

kubectl() {
	lazybrew
	brew $@
}
