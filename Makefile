include make.conf
# Variables from make.conf:
#
# DOCKER_REPO
DOCKER := $(shell command -v docker 2> /dev/null)

IMAGE_NAME=grafana

default: build

dependencies:
ifndef DOCKER
	$(error "Docker is not installed")
endif

build: dependencies
	docker build . -t ${DOCKER_REPO}/${IMAGE_NAME}

push:
	docker push ${DOCKER_REPO}/${IMAGE_NAME}
