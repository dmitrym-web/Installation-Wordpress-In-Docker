##################
# Docker compose
##################
DOCKER_COMPOSE = docker-compose -f docker-compose.yaml

build:
	${DOCKER_COMPOSE} build

start:
	${DOCKER_COMPOSE} start

stop:
	${DOCKER_COMPOSE} stop

up:
	${DOCKER_COMPOSE} up -d --remove-orphans

ps:
	${DOCKER_COMPOSE} ps

logs:
	${DOCKER_COMPOSE} logs -f

down:
	${DOCKER_COMPOSE} -v --rmi=all --remove-orphans


##################
# App
##################

app_bash:
	${DOCKER_COMPOSE} exec -u www-data mj-php bash