#!/bin/bash
set -e
chmod 755 cleanup.sh
docker ps -q | xargs docker kill
docker ps -qa | xargs docker rm

docker images -qa | xargs docker rmi -f
docker system prune