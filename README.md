# VOTO API Specification

This project contains the specification of the VOTO API. The schema is based on the [OpenAPI Specification v3.1](https://github.com/OAI/OpenAPI-Specification)

## Introduction

We saw the need to create a standard set of informatioen for vote advice applications. Therefore, we came up with the idea of defining a standard API while fullfilling the OpenAPI specification format. This allows easy adoption with generated client and server stubs.

## Usage

You are free to use the specification to generate a client, which can be used for accessing the API. We highly recommend using the api-generator, which is cabable of generating fully usable clients in almost every programming language.

### Docker usage

Simply build and run our docker image:

```sh
docker build -t open-api-generator:latest . && docker run -v ${PWD}/:/app/ -e LANGUAGE=go open-api-generator
```

You can specify the LANGUAGE for the generated code using the `LANGUAGE` environment variable. Check out the list from [here](https://openapi-generator.tech/docs/generators/).

### Manual usage

```sh
# Install speccy:
npm install speccy -g
# Install openapi-generator:
brew install openapi-generator
# Run Speccy to merge files:
speccy resolve specification.yml -o spec-merged.yml
# Run openapi generator:
openapi-generator generate -i spec-merged.yml -g go -o ./output
```

For more information, please visit: [https://github.com/OpenAPITools/openapi-generator](https://github.com/OpenAPITools/openapi-generator)
