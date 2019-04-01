# Bankifi-Tech-Test
My Bankifi Tech test solution

# Docker and Docker Compose install script

## Usage
1. Execute the script on dir PATH/script `$ ./get_installDocker.sh` at docker host Env
	1. a) - It will install docker-daemon and Docker-compose as all dependencies
2. Check if Docker is install with `$ docker version`
3. Check if docker-compose is installed `$ docker-compose --version`
4. Navigate into PATH/environment/ dir and run `$ docker-compose up --scale web=3`

*** Which this script a Docker monitor serrvices will run every 2 minutes
# Intall a new Cronjob to monitor all dockers
`echo "$(echo '* 2 * * * '/script/webservercheck.sh' ; crontab -l)" | crontab -`

