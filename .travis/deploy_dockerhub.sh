#!/bin/sh
sudo docker login -u $DOCKER_USER -p $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi
sudo docker build -f Dockerfile -t $TRAVIS_REPO_SLUG:$TAG .
sudo docker images
echo docker_user is $DOCKER_USER
echo docker_pass is $DOCKER_PASS

sudo docker push $TRAVIS_REPO_SLUG:$TAG

