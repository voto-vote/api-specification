help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

dockerbuild:
	cd openapi && \
	docker build -t open-api-generator:latest .

dockerrun:
	docker run -v $(shell pwd)/openapi:/app/ -e LANGUAGE=go open-api-generator

build:	dockerbuild dockerrun
