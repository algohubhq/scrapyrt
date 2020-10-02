#!/bin/sh

GIT_COMMIT=$(git rev-list -1 HEAD)
VERSION=$(git describe --all --exact-match `git rev-parse HEAD` | grep tags | sed 's/tags\///')

docker build -t algohub/scrapyrt:$GIT_COMMIT -f ./Dockerfile .