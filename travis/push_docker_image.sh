#!/bin/bash
set -ev

if [ "$TRAVIS_PULL_REQUEST" = "false" ]; then
  repo=denniseffing/titanium-world
  tag=`if [ -n "$TRAVIS_TAG" ]; then echo $TRAVIS_TAG; else echo $TRAVIS_COMMIT ; fi`
  docker build -t ${repo}:${tag} .
  docker tag ${repo}:${tag} ${repo}:latest
  docker push ${repo}:${tag}
  docker push ${repo}:latest
fi