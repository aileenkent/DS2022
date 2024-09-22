#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzvf lab3-bundle.tar.gz

awk '!/^[[:space:]]*$/' lab3_data.tsv > cleaned-lab3-bundle.tsv

tr '\t' ',' < cleaned-lab3-bundle.tsv > myfile.csv

data_lines=$(tail -n +2 myfile.csv | wc -l)

echo "$data_lines"

tar -czvf converted-archive.tar.gz myfile.csv
