#!/bin/sh

if [ "$DB_ENGINE" = "postgres" ] && [ "$DJANGO_ENV" != "production" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $DB_HOST 5432; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

python manage.py migrate

exec "$@"