#!/bin/bash

resource_folder="src/main/resources/"
rego_resources="src/main/resources/rego-resources.txt"

for rego_file in $(find $resource_folder -name "*.rego" -type f); do
  echo "${rego_file#"$resource_folder"}" >> $rego_resources
done



