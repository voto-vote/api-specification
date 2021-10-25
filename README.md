# VOTO API Specification

![MIT](https://img.shields.io/badge/license-MIT-blue.svg)
[![CI](https://github.com/voto-vote/api-specification/actions/workflows/redoc-gh-pages.yaml/badge.svg)](https://github.com/voto-vote/api-specification/actions/workflows/redoc-gh-pages.yaml)
[![Github Pages](https://img.shields.io/website-up-down-green-red/http/shields.io.svg)](https://voto-vote.github.io/api-specification/)

This project contains the specification of the VOTO API. The schema is based on the [OpenAPI Specification v3.1](https://github.com/OAI/OpenAPI-Specification).

## Introduction

We saw the need to create a standard set of informatioen for vote advice applications. Therefore, we came up with the idea of defining a standard API while fullfilling the OpenAPI specification format. This allows easy adoption with generated client and server stubs.

## Usage

You are free to use the specification to generate a client, which can be used for accessing the API. We highly recommend using the api-generator, which is cabable of generating fully usable clients in almost every programming language.

### Docker usage

Go into `openapi` directory and simply build and run our docker image:

```sh
docker build -t open-api-generator:latest . && docker run -v ${PWD}/:/app/ -e LANGUAGE=go open-api-generator
```

You can specify the LANGUAGE for the generated code using the `LANGUAGE` environment variable. Check out the list from [here](https://openapi-generator.tech/docs/generators/).

### Manual usage

If you want to run everything manually, go to `openapi` folder and run:

```sh
# Install speccy:
npm install @redocly/openapi-cli -g
# Install openapi-generator:
brew install openapi-generator
# Run Linter:
npx @redocly/openapi-cli lint specification.yaml
# Merge files:
npx @redocly/openapi-cli bundle specification.yaml -o ./output/spec-merged.yaml
# Run openapi generator:
openapi-generator-cli generate -i ./spec-merged.yaml -g $LANGUAGE -o ./generated/
```

For more information, please visit: [https://github.com/OpenAPITools/openapi-generator](https://github.com/OpenAPITools/openapi-generator)
