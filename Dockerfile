FROM postgis/postgis:14-3.2-alpine

COPY sample.sql /docker-entrypoint-initdb.d/sample.sql

# Set the non-root user as the default user
USER nonroot