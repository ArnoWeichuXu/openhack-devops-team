#!/bin/bash
set -e

docker images -qa | xargs docker rmi -f
docker system prune