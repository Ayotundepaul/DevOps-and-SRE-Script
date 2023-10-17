#!/bin/bash

# Backup current .bashrc
cp ~/.bashrc ~/.bashrc.backup

# Customize PS1 (Prompt)
echo "export PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\[\033[31m\]\$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\033[m\]\$ '" >> ~/.bashrc

# Aliases for common commands
echo "alias ll='ls -la'" >> ~/.bashrc
echo "alias l='ls -CF'" >> ~/.bashrc

# Colorful ls output
echo "alias ls='ls --color=auto'" >> ~/.bashrc

# Apply changes
source ~/.bashrc

echo "Terminal has been beautified!"
