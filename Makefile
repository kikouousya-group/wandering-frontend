ROOT_DIR    = $(shell pwd)

SERVER_NAME = "wandering_frontend"
IMAGE_NAME = "ghcr.io/kikouousya-group/wandering_frontend"
GIT_HASH = $(shell git rev-parse --short  HEAD)
DOCKERFILE_PATH = Dockerfile


build_docker:
	docker build -t $(IMAGE_NAME):$(GIT_HASH) -t $(IMAGE_NAME):latest -f $(DOCKERFILE_PATH) .


docker_push:
	echo $(DOCKER_PASSWORD) |  docker login -u $(DOCKER_USERNAME) --password-stdin  $(DOCKER_REGISTRY)
	docker push $(IMAGE_NAME):$(GIT_HASH)
	docker push $(IMAGE_NAME):latest