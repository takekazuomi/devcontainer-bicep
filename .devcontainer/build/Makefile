TAG = 0.0.1

help:       ## Show this help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

build:      ## build
	docker build \
		-t takekazuomi/devcontainers-bicep:$(TAG) \
		-t takekazuomi/devcontainers-bicep:latest \
		--build-arg VARIANT=1.15 .

push:       ## push
	docker push takekazuomi/devcontainers-bicep:$(TAG)
	docker push takekazuomi/devcontainers-bicep:latest

