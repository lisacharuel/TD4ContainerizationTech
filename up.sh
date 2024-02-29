#!/bin/bash
docker network connect my-tiny-network appTP5

network_exists=$(docker network ls --format '{{.Name}}' | grep '^my-tiny-network$')

if [ -z "$network_exists" ]; then
  echo "Network my-tiny-network does not exist. Creating..."
  docker network create my-tiny-network
  echo "Network my-tiny-network has been created."
else
  echo "Network my-tiny-network already exists. No action taken."
fi

volume_exists=$(docker volume ls --format '{{.Name}}' | grep '^db-vol$')
if [ -z "$volume_exists" ]; then
  echo "Volume db-vol does not exist. Creating..."
  docker volume create db-vol
  echo "Volume db-vol has been created."
else
  echo "Volume db-vol already exists. No action needed."
fi

container_exists=$(docker ps -a --format '{{.Names}}' | grep '^dbTP5$')

if [ ! -z "$container_exists" ]; then
  echo "Container dbTP5 exists. Deleting..."
  docker rm -f dbTP5
  echo "Container dbTP5 has been deleted."
else
  echo "Container dbTP5 does not exist. No action taken."
fi

docker run --name dbTP5 --network my-tiny-network -v db-vol:/data -d db


container_exists2=$(docker ps -a --format '{{.Names}}' | grep '^appTP5$')

if [ ! -z "$container_exists2" ]; then
  echo "Container appTP5 exists. Deleting..."
  docker rm -f appTP5
  echo "Container appTP5 has been deleted."
else
  echo "Container appTP5 does not exist. No action taken."
fi

docker run --name appTP5 --network my-tiny-network -p 8080:8080 -d app