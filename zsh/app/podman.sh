if ! command -v podman &>/dev/null; then
	if [[ "$OSTYPE" == "darwin"* ]]; then
		brew install podman podman-compose
		brew install --cask podman-desktop
	fi
else
	alias k="kubectl"
fi
