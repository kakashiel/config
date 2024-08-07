# Check if the operating system is macOS
if [[ "$(uname)" == "Darwin" ]]; then
	# Function to check if terminal-notifier is installed, and install it if not
	function ensure_terminal_notifier() {
		if ! command -v terminal-notifier &>/dev/null; then
			echo "terminal-notifier not found, installing with Homebrew..."
			brew install terminal-notifier
		fi
	}

	# Ensure terminal-notifier is installed
	ensure_terminal_notifier

	# Use preexec and precmd hooks to wrap every command
	preexec() {
		start_time=$(date +%s)
	}

	precmd() {
		# Ensure start_time and end_time are not empty
		if [[ -n "$start_time" ]]; then
			end_time=$(date +%s)
			duration=$((end_time - start_time))

			if [ $duration -gt 5 ]; then
				echo 'Command done!' | terminal-notifier -sound default
			fi

			# Reset start_time and end_time to avoid incorrect calculations
			unset start_time
			unset end_time
		fi
	}
fi
