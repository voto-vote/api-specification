#!/bin/sh

# Move into output folder in order to have clean docker volume
mkdir -p output/generated


echo "Linting files..."
npx @redocly/openapi-cli lint specification.yaml

echo "Merging files..."
npx @redocly/openapi-cli bundle specification.yaml -o ./output/spec-merged.yaml  

cd  output

openapi-generator-cli version-manager set 5.2.1

echo "Generate code..."
openapi-generator-cli generate -i ./spec-merged.yaml -g $LANGUAGE -o ./generated/ --verbose
