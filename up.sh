#!/bin/bash

docker run --name appTP5 --network my-tiny-network -p 8080:8080 -d app

docker run --name dbTP5 --network my-tiny-network -d db
