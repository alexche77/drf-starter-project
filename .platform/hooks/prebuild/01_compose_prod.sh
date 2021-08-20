#!/bin/sh

if [ "$DJANGO_ENV" != "production" ]
then
    echo "Changing docker-compose file for $DJANGO_ENV environment..."

    mv docker-compose.$DJANGO_ENV.yml docker-compose.yml


    echo "Done!"
fi

exec "$@"