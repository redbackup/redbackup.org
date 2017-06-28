#!/bin/sh -e

SOURCE=$1
TARGET=$2
BRANCH=$3
FQDN=$4

# Add SSH key from env variable
mkdir -p ~/.ssh/ &&
    echo ${SSH_KEY} | base64 -d > ~/.ssh/id_ed25519 &&
    chmod -R 700 ~/.ssh/

cd $SOURCE
git init
echo "$FQDN" > ${SOURCE}CNAME
git add .
git commit -m "Deployment" --author="Deployment <no-reply@redbackup.org>"
git remote add origin "$TARGET"
git push --set-upstream origin master
git push -f

echo "Website deployed."
