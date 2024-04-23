#!/bin/bash

# Reads all rego files under the resource directory and adds there paths to a list.
# This is required, since the quarkus native images cannot list resource subdirectories, but are only able to address
# resources directly.

resource_folder="src/main/resources/"
rego_resources="src/main/resources/rego-resources.txt"

for rego_file in $(find $resource_folder -name "*.rego" -type f); do
  echo "${rego_file#"$resource_folder"}" >> $rego_resources
done



