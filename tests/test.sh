#!/bin/bash

export $(cat tests/test.env|grep -v "^#")

docker-compose -f docker-compose.yml -f tests/docker-compose.yml up --build -V  --timeout 600 --exit-code-from fuse-appliance-template
