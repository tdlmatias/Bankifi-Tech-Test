# Bankifi-Tech-Test
My Bankifi Tech test solution

# Docker and Docker Compose install script

## Usage
1. Execute the script on dir PATH/script `$ ./get_installDocker.sh` at docker host Env
        1. a) - It will install docker-daemon and Docker-compose as all dependencies
2. Check if Docker is install with `$ docker version`
3. Check if docker-compose is installed `$ docker-compose --version`
4. Navigate into PATH/environment/ dir and run `$ docker-compose up --scale web=3`

5. `$ docker-compose images`
WARNING: Some services (web) use the 'deploy' key, which will be ignored. Compose does 
not support 'deploy' configuration - use `docker stack deploy` to deploy to a swarm.

{         Container         -   Repository     -           Tag  -   Image Id   -   Size  }
----------------------------------------------------------------------------------------
`environments_port-tutorial_1   chuckwired/port-tutorial   latest   80634ca1c877   378 MB`
`environments_web_1             environments_web           latest   5ab99fbd3414   403 MB`
`environments_web_2             environments_web           latest   5ab99fbd3414   403 MB`
`environments_web_3             environments_web           latest   5ab99fbd3414   403 MB`


# Which this script a Docker monitor services will run every 2 minutes

## Intall a new Cronjob to monitor all dockers
`echo "$(echo '* 2 * * * '/script/webservercheck.sh' ; crontab -l)" | crontab -`

## Directory Structure.

fig. 01.
  `BankifiTechTest
│   └── Bankifi-Tech-Test
│       ├── cloudsetup
│       │   └── base
│       │       ├── get_installDocker.sh
│       │       ├── hosts
│       │       ├── outputs.tf
│       │       ├── playbook.yml
│       │       ├── provider.tf
│       │       ├── README.md
│       │       ├── resources.tf
│       │       ├── security_groups.tf
│       │       └── variables.tf
│       ├── environments
│       │   ├── app.js
│       │   ├── docker-compose.yml
│       │   ├── Dockerfile
│       │   └── package.json
│       ├── LICENSE
│       ├── README.md
│       └── script
│           ├── get_installDocker.sh
│           ├── provision.sh
│           └── webservercheck.py`

