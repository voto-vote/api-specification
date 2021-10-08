#!/bin/sh

# Move into output folder in order to have clean docker volume
mkdir -p output/generated

echo "Merging files..."
speccy resolve ./specification.yml -o output/spec-merged.yml

cd  output

echo "Generate code..."
openapi-generator-cli generate -i ./spec-merged.yml -g $LANGUAGE -o ./generated/