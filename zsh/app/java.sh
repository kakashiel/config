if [ ! -d "$HOME/.sdkman" ]; then
	curl -s "https://get.sdkman.io" | bash
	echo 'Install SDK for java'
else
	source "$HOME/.sdkman/bin/sdkman-init.sh"
fi
GRAALVM_DIR="$HOME/.sdkman/candidates/java/21.0.1-graal"

if [ ! -d "$GRAALVM_DIR" ]; then
	sdk install java 21.0.1-graal
fi

export GRAALVM_HOME=$GRAALVM_DIR
export PATH="$GRAALVM_DIR/bin:$PATH"
