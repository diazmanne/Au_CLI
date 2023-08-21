#!/bin/bash

# Install Node.js using nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.nvm/nvm.sh
nvm install 18

# Install dfx
DFX_VERSION=0.14.2 sh -ci "$(curl -fsSL https://sdk.dfinity.org/install.sh)"

# Add dfx to PATH
echo 'export PATH="$PATH:$HOME/bin"' >> "$HOME/.bashrc"
source "$HOME/.bashrc"

echo "Installation completed. Make sure to restart your terminal."

