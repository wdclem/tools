#!/bin/bash
# Script to delete the .ssh directory 

# ANSI color codes for red text
RED='\033[0;31m'
NC='\033[0m' 

# Check if the .ssh directory exists
if [ -d "$HOME/.ssh" ]; then
    rm -rf "$HOME/.ssh"
    echo ".ssh directory deleted"
fi

# Confirm the deletion 
echo "Current contents of the home directory:"
ls -la "$HOME/"

# Check if .ssh directory still exists
if [ -d "$HOME/.ssh" ]; then
    echo -e "${RED}Danger: .ssh directory still exists${NC}"
else
    echo ".ssh directory successfully removed"
fi
