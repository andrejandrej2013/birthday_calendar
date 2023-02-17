
##################
# Variables
##################

DOCKER_COMPOSE = docker-compose --env-file ./docker/.env
DOCKER_COMPOSE_PHP_FPM_EXEC = ${DOCKER_COMPOSE} exec -u www-data php

##################
# App
##################

app_bash:
	${DOCKER_COMPOSE} exec -u www-data php bash