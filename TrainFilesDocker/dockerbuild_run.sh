#!/bin/sh
docker build -t project3 .
docker tag project3 srinidhigoud/project3
docker push srinidhigoud/project3
