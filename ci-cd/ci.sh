#!/bin/sh

echo "Running flake8.."
docker-compose run app flake8
echo "Lint passed!"
echo "------"
echo "Testing"
docker-compose run app sh -c "pytest --cov app"
echo "Finished!"