help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build:
	cd openapi \
	docker build -t open-api-generator:latest . && docker run -v ${PWD}/:/app/ -e LANGUAGE=go open-api-generator
