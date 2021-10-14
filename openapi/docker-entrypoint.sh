#!/bin/sh

# Move into output folder in order to have clean docker volume
mkdir -p output/generated

echo "Merging files..."
speccy resolve ./specification.yaml -o output/spec-merged.yaml

cd  output

echo "Generate code..."
openapi-generator-cli generate -i ./spec-merged.yaml -g $LANGUAGE -o ./generated/
