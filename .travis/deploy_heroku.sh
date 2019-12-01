#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
# heroku plugins:install heroku-container-registry
sudo docker login -u _ --password=$HEROKU_API_KEY registry.heroku.com
sudo heroku container:push web --app $HEROKU_APP_NAME
sudo heroku container:release web --app $HEROKU_APP_NAME
