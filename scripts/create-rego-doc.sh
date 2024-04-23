#!/bin/bash

# generates the documenatation for the rego methods, based on their doc.
# Every method should have:
#  - first a line with all its ODRL-Keys, prefixed with `## `
#  - second a line with the method documentation
#  - the method itself

resource_folder="src/main/resources/"
rego_doc_file="doc/REGO.md"

echo "# REGO Methods" > $rego_doc_file
echo "" >> $rego_doc_file

declare  -A package_map
for rego_file in $(find $resource_folder -name "*.rego" -type f); do
  package_line=$(head -n 1 $rego_file)
  package=$(echo "${package_line#"package "}")
  readarray -d "." -t newarr <<< "$package"
  if [[ -v package_map[$newarr[0]] ]]; then
    echo  "Already added"
  else
    package_map[$newarr[0]]=package
    echo "" >> $rego_doc_file
    echo "## ${newarr[0]}" >> $rego_doc_file
    echo "" >> $rego_doc_file
    echo "| ODRL Class | ODRL Key | Rego-Method | Description |" >> $rego_doc_file
    echo "| --- | --- | --- | --- |" >> $rego_doc_file
  fi

  class=$(echo "${newarr[1]//[$'\t\r\n']}")
  readarray -t line_array < $rego_file

  for i in ${!line_array[@]}; do
    current_line="${line_array[$i]}"
    if [[ $current_line == \#\#* ]] ;
    then
      odrl_key=$(echo "${current_line#"## "}")
      j=$((i+1))
      k=$((i+2))
      doc_line="${line_array[$j]}"
      doc=$(echo "${doc_line#"# "}")
      method_line="${line_array[$k]}"
      readarray -d " " -t methodarr <<< "$method_line"
      method="${methodarr[0]}"
      echo "| $class | $odrl_key | $method | $doc |" >> $rego_doc_file
    fi
  done
done

