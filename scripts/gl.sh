#!/bin/sh

set -e

if [ -z "$1" ]
then
    git --no-pager log --oneline --decorate --graph -n 15
else
    git --no-pager log --oneline --decorate --graph -n $1
fi