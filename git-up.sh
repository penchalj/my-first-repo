#!/bin/bash

# Check if we are in a git repository
if [ ! -d .git ]; then
    echo "Error: This is not a git repository."
    exit 1
fi

# 1. Add all changes
git add .

# 2. Ask for a commit message
echo "Enter commit message:"
read message

# 3. Commit with that message
git commit -m "$message"

# 4. Push to the main branch
echo "Pushing to GitHub..."
git push origin main

echo "Done! code is now on GitHub."
