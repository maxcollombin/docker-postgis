# docker-postgis

## Description

Docker-compose default instance to run PostGIS and pgAdmin in docker containers

## To Do

- add docker volumes
- add sql scripts to load data

## References

- https://towardsdatascience.com/how-to-run-postgresql-and-pgadmin-using-docker-3a6a8ae918b5
- https://levelup.gitconnected.com/creating-and-filling-a-postgres-db-with-docker-compose-e1607f6f882f

## Hint💡

to get containers ip run:

- docker ps -a
- docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <container_id>
