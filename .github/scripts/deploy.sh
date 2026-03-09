#!/usr/bin/env bash

# Let's assume antweb is in home directory of the ssh user
cd $HOME/antweb

# Get the latest source code
git checkout master
git pull origin master --no-edit

# Restart docker compose services
docker-compose exec antweb ant deploy
docker-compose restart antweb

