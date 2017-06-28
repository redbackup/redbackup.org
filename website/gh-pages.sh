#!/bin/sh -e

SOURCE=$1
TARGET=$2
BRANCH=$3

# Add SSH key from env variable
mkdir -p ~/.ssh/ &&
    echo ${SSH_KEY} | base64 -d > ~/.ssh/id_ed25519 &&
    chmod -R 700 ~/.ssh/

cd $SOURCE
git init
git checkout -B "$BRANCH"
git remote add origin "$TARGET"
git add .
git commit -m "Deployment" --author="Deployment <no-reply@redbackup.org>"
git push -f

echo "Website deployed."
