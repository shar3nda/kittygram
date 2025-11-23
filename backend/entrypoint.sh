#!/usr/bin/env bash
set -e

python manage.py migrate --noinput
python manage.py collectstatic --noinput --clear

cp -r /app/collected_static/* /app/static/static/

exec "$@"
