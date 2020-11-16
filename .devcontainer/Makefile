IMAGE_NAME	?= takekazuomi/devcontainers-bicep
TAG		?= 0.0.7
BICEP_RELEASE	= v0.2.14

help:	## Show this help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

build:	## build
	docker build \
		-t $(IMAGE_NAME):$(TAG) \
		-t $(IMAGE_NAME):latest \
		-f base.Dockerfile \
		--build-arg BICEP_RELEASE=$(BICEP_RELEASE) \
		.

push:	## push
	docker push $(IMAGE_NAME):$(TAG)
	docker push $(IMAGE_NAME):latest

login:	## login docker shell
	docker run -it --rm -u=$$(id -u):$$(id -g) -v $(PWD):/workspace $(IMAGE_NAME):latest /bin/zsh
