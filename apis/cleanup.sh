#!/bin/bash
set -e

sudo docker ps -q | xargs docker kill
sudo docker ps -qa | xargs docker rm

sudo docker images -qa | xargs docker rmi -f
sudo docker system prune