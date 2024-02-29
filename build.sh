#!/bin/bash

network_exists=$(docker network ls --format '{{.Name}}' | grep '^my-tiny-network$')

if [ -z "$network_exists" ]; then
  echo "Network my-tiny-network does not exist. Creating..."
  docker network create my-tiny-network
  echo "Network my-tiny-network has been created."
else
  echo "Network my-tiny-network already exists. No action taken."
fi

docker build -t app -f Dockerfile.app .

docker build -t db -f Dockerfile.db .