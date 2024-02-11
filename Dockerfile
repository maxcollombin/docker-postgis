FROM postgis/postgis:14-3.2-alpine

# Copy the dump file into the docker container

COPY sample.dmp /docker-entrypoint-initdb.d/sample.dmp

# Use the docker-entrypoint.sh of postgres as entrypoint

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

# Set the default command to run when the container starts

CMD ["postgres"]