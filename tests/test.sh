#!/bin/bash

export $(cat tests/test.env|grep -v "^#")

docker-compose -f docker-compose.yml -f tests/docker-compose.yml up --build -V --exit-code-from fuse-appliance-template
