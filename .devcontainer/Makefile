IMAGE_NAME	?= takekazuomi/devcontainers-bicep
BICEP_RELEASE	= 0.5.6
TAG		?= $(BICEP_RELEASE)

help:		## Show this help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

build:		## build
	docker build \
		-t $(IMAGE_NAME):$(TAG) \
		-t $(IMAGE_NAME):latest \
		-f base.Dockerfile \
		--build-arg BICEP_RELEASE=v$(BICEP_RELEASE) \
		.

scan:		## scan
	docker scan $(IMAGE_NAME):$(TAG)

push:		## push
	docker push $(IMAGE_NAME):$(TAG)
	docker push $(IMAGE_NAME):latest

login:		## login docker shell
	docker run -it --rm -u=$$(id -u):$$(id -g) -v $(PWD):/workspace $(IMAGE_NAME):latest /bin/zsh

update-scripts:	## update scripts
	mkdir -p tmp; cd tmp; rm -rf vscode-dev-containers; git clone --depth 1 git@github.com:microsoft/vscode-dev-containers.git; \
	ls ../library-scripts/ | grep '.sh$$' | xargs -I {} bash -c "([ -f vscode-dev-containers/script-library/{} ] && cp -v vscode-dev-containers/script-library/{} ../library-scripts/{}) || true"

tag:
	git tag -a v$(TAG)

release:
	gh release create v$(TAG) -d --generate-notes -t v$(TAG) --target main
