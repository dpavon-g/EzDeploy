```
    ______      ____             __           
   / ____/___  / __ \___  ____  / /___  __  __
  / __/ /_  / / / / / _ \/ __ \/ / __ \/ / / /
 / /___  / /_/ /_/ /  __/ /_/ / / /_/ / /_/ / 
/_____/ /___/_____/\___/ .___/_/\____/\__, /  
                      /_/            /____/  
```

### Deployment tool for dockerized environments focused on software development efficiency

This tool has been developed for developers who need to test ideas quickly and do not want to waste time creating a new environment configuration every time.

## How to use:
On linux execute:

```
$ bash EzDeploy.sh
```

## Requirements:

1. Docker

## About Flask:

EzDeploy The tool generates a local data volume, so the changes you make in your flask environment will be reflected instantly and you will only have to F5 on the web to see them. If you want to change this, just delete the volume in docker-compose and remove debug mode in flask.

## Extra information:
Inside the *./docker_Deployers* folder you have all the docker-compose files. If you want to deploy your environment faster you can execute the next command inside its folder.
```
$ docker-compose up --build
```

## Delete the deployment volumes:

EzDeploy creates local docker volumes where your data will be stored, currently they cannot be deleted from the tool, but with the following commands you can list the volumes you have created and delete the ones you no longer need.

If you want to see your volumes execute:

```
$ docker volume ls
```

if you want to delete any existing volume:

```
$ docker volume rm <volume name>
```

Also, you can delete volumes that no longer have any containers associated with them running:

```
$ docker volume prune
```

## Badges



[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)