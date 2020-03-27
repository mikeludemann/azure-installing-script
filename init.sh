#!/bin/bash

echo "Checking azure"

if az --version > /dev/null; then
	echo "azure is already installed."
else
	echo "installing azure"
	if brew -v > /dev/null; then
		echo "brew is already installed."
		echo "Update brew:"
		brew update
		echo "Install the azure package:"
		brew install azure-cli
	else
		echo "brew is not installed"
	fi
	echo "azure is not installed. / Could not be installed."
fi
