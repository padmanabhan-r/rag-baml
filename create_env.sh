#!/bin/bash

# Prompt the user for the virtual environment name
read -p "Enter the name for the virtual environment: " env_name

# Check if the virtual environment already exists
if [ -d "$env_name" ]; then
    echo "The virtual environment '$env_name' already exists."
else
    # Create the virtual environment
    python3 -m venv "$env_name"
    echo "Virtual environment '$env_name' created."
fi

# Activate the virtual environment
# Note: Activation only affects the current shell session
source "$env_name/bin/activate"

# Inform the user
echo "Virtual environment '$env_name' is now activated."
