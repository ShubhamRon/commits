#!/bin/bash

# Variables
REPO_DIR=$(pwd)  # Get the current directory (your Git repository)
COMMIT_MSG="Automated commit at $(date +"%Y-%m-%d %H:%M:%S")"  # Commit message with the current time
BRANCH="main"  # Change this if you are using a different branch
FILE_NAME="time_commit.txt"  # File to update with the current time

# Change to your repository directory (if not already inside)
cd $REPO_DIR

# Create or update a file with the current time
echo "Commit made at: $(date +"%Y-%m-%d %H:%M:%S")" > $FILE_NAME

# Stage changes
git add $FILE_NAME

# Commit changes with a message
git commit -m "$COMMIT_MSG"

# Push the commit to the repository
git push origin $BRANCH

# Output commit information
echo "Commit made at: $(date +"%Y-%m-%d %H:%M:%S")"
