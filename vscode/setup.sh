#!/usr/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

# add vscode
sudo apt install -y code

# add extensions
code --install-extension gruntfuggly.todo-tree
code --install-extension ms-python.autopep8
code --install-extension ms-python.black-formatter
code --install-extension ms-python.debugpy
code --install-extension ms-python.isort
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
#code --install-extension tamasfe.even-better-toml

# apply user settings
install -vD ${SCRIPT_DIR}/settings.json ${HOME}/.config/Code/User/settings.json
