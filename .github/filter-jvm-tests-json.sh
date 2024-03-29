#!/bin/bash

BASEDIR=$(dirname "$0")

# Filter out mac os from a matrix of build configurations.
# The reason we do this is that running mac on a fork won't work; the fork won't have a self-hosted runner

# See https://stackoverflow.com/questions/65384420/how-to-make-a-github-action-matrix-element-conditional

repoName=${GITHUB_REPOSITORY}

matrix=$(cat $BASEDIR/matrix-jvm-tests.json)

echo \{java: ${matrix}\}