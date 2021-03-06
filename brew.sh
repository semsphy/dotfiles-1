#!/usr/bin/env bash

# Install or update Homebrew
if [[ ! -f $(which brew) ]];
then
	echo "• Installing Homebrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "• Updating Homebrew"
	brew update
	brew upgrade --all
	brew cleanup
fi

# Install the required stuff
echo "• Installing Homebrew formulae"
brew doctor
for formulae in "git" "zsh" "sqlite" "cloc" "terminal-notifier" "pandoc" "tree" "rbenv" "autossh" "rodionovd/taps/shortcuts" "mas" "class-dump"; do
	brew install "${formulae}"
done
