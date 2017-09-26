#!/bin/bash
docker login -u neilo40

docker build -f deploy/Dockerfile.server -t restful-doom-server .
docker tag restful-doom-server neilo40/private:restful-doom-server
docker push neilo40/private:restful-doom-server

docker build -f deploy/Dockerfile.client -t restful-doom-client .
docker tag restful-doom-client neilo40/private:restful-doom-client
docker push neilo40/private:restful-doom-client

docker build -f deploy/Dockerfile.solo -t restful-doom-solo .
docker tag restful-doom-solo neilo40/private:restful-doom-solo
docker push neilo40/private:restful-doom-solo

