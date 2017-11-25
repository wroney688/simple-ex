#!/bin/sh

docker build --tag=wroney/ms-demo:v1.0.0 v1.0.0
docker push wroney/ms-demo:v1.0.0

docker build --tag=wroney/ms-demo:v1.5.0 v1.5.0
docker push wroney/ms-demo:v1.5.0

docker build --tag=wroney/ms-demo:v2.2.2 v2.2.2
docker push wroney/ms-demo:v2.2.2


