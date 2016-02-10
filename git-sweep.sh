#!/bin/sh

git branch $1 --merged | sed 's/origin\///' | xargs -n 1 git push origin --delete

