## Command to connect with the mariaDB:

```$ mysql -h 127.0.0.1 -P 3306 -u root -p```

## Delete the deployment volumes:

With this command you will kill all the docker containers and delete all the volumes associated to a deployment.

```$ docker-compose down -v```