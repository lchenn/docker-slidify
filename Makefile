DOCKER_ID_USER = lchenn
ARTIFACT = docker-slidify
LATEST = latest
DOCKER_IMAGE = $(DOCKER_ID_USER)/$(ARTIFACT)

VERSION = 1.0.0

.PHONY: build push

build:
	@docker build -t $(ARTIFACT) .
	@docker tag $(ARTIFACT) $(DOCKER_IMAGE):$(VERSION)
	@docker tag $(ARTIFACT) $(DOCKER_IMAGE):$(LATEST)

push:
	@docker login --username $(DOCKER_ID_USER) --password $(DOCKER_ID_PASSWORD) 
	@docker push $(DOCKER_IMAGE):$(VERSION)
	@docker push $(DOCKER_IMAGE):$(LATEST)
