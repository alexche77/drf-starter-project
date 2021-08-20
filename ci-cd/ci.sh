#!/bin/sh

docker-compose build
docker-compose run app flake8
docker-compose run app sh -c "pytest --cov app"