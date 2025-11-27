#!/usr/bin/bash

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
install -vD settings.json ~/.config/Code/User/settings.json
