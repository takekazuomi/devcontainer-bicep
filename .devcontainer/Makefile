IMAGE_NAME	?= takekazuomi/devcontainers-bicep
TAG		?= 0.3.539
BICEP_RELEASE	= v0.3.539

help:	## Show this help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

build:	## build
	docker build \
		-t $(IMAGE_NAME):$(TAG) \
		-t $(IMAGE_NAME):latest \
		-f base.Dockerfile \
		--build-arg BICEP_RELEASE=$(BICEP_RELEASE) \
		.
scan:	## build
	docker scan $(IMAGE_NAME):$(TAG)

push:	## push
	docker push $(IMAGE_NAME):$(TAG)
	docker push $(IMAGE_NAME):latest

login:	## login docker shell
	docker run -it --rm -u=$$(id -u):$$(id -g) -v $(PWD):/workspace $(IMAGE_NAME):latest /bin/zsh

update-scripts:
	cd tmp; rm -rf vscode-dev-containers; git clone --depth 1 git@github.com:microsoft/vscode-dev-containers.git; \
	ls ../library-scripts/ | grep *.sh | xargs -I {} cp vscode-dev-containers/script-library/{} ../library-scripts/{}