#!/bin/bash
# Script to delete the .ssh directory

if [ -d "$HOME/.ssh" ]; then
    rm -rf "$HOME/.ssh"
  
if [ -d "$HOME/.ssh" ]; then
    rm -rf "$HOME/.ssh"
    echo ".ssh directory deleted"
else
    echo ".ssh directory does not exist"
fi

# Confirm the deletion by listing the contents of the home directory
echo "Current contents of the home directory:"
ls -la $HOME/

# Check if .ssh directory still exists
if [ -d "$HOME/.ssh" ]; then
    echo -e "${RED}Danger: .ssh directory still exists${NC}"
else
    echo ".ssh directory successfully removed"
fi
