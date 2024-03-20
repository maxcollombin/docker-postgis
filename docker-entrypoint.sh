#!/bin/bash

set -e

# Start the postgres server in the background

pg_ctl -D "$PGDATA" -o "-c listen_addresses=''" -w start

# Create the database

psql -U postgres -c "CREATE DATABASE ${POSTGRES_DB};"

# Create the roles

psql -U postgres -c "CREATE ROLE ${ROLE_NAME};"

# Restore the dump file

pg_restore -U postgres -d ${POSTGRES_DB} /docker-entrypoint-initdb.d/sample.dmp

# Start the postgres server in the foreground

exec "$@"