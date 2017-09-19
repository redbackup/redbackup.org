#!/bin/bash

FILENAME="$1"
PREVIOUS_FILE="$FILENAME.prev"
DIFF_FILE="$FILENAME.diff.tex"

# If there are no tags yet,  
if [ -z "$(git tag --list)" ]; then
    ROOT=$(git rev-list --max-parents=0 HEAD)
    echo "No tags yet - diffing with root node ($ROOT)"
    git show $ROOT:$FILENAME > $PREVIOUS_FILE 2> /dev/null || true
else
    HEAD_HASH=$(git rev-parse HEAD)
    LATEST_TAG=$(git describe --abbrev=0 --tags)
    LATEST_TAG_HASH=$(git rev-list -n 1 $LATEST_TAG)

    if [ $LATEST_TAG_HASH == $HEAD_HASH ] && [ -z "$(git tag --no-contains $LATEST_TAG)" ]; then
        ROOT=$(git rev-list --max-parents=0 HEAD)
        echo "Current HEAD is first tag - diffing with root node ($ROOT)"
        git show $ROOT:$FILENAME > $PREVIOUS_FILE 2> /dev/null || true
    elif [ $LATEST_TAG_HASH == $HEAD_HASH ]; then
        PREV=$(git describe --abbrev=0 --tags `git rev-list --tags --skip=1  --max-count=1`)
        echo "Current HEAD is tagged - show difference to previous tag ($PREV)"
        git show $PREV:$FILENAME > $PREVIOUS_FILE 2> /dev/null || true
    else
        echo "Current HEAD is not tagged. Using $LATEST_TAG"
        git show $LATEST_TAG:$FILENAME > $PREVIOUS_FILE 2> /dev/null || true
    fi
fi

if [ -s "$PREVIOUS_FILE" ] 
then
    docker run --rm --group-add 1003 --volume $(pwd):/latexdiff:z raphiz/latexdiff:1.2.1 --ignore-warnings "$PREVIOUS_FILE" "$FILENAME" > "$DIFF_FILE"
    docker run --rm --group-add 1003 --volume $(pwd):/tectonic fabianhauser/tectonic:0.1.6 $DIFF_FILE
else
   echo "Skipping diff (previous file empty)"
fi
