#!/bin/bash

# Converty Delimiters
# To convert TSV to CSV, or vice versa, us a text search+replace
# function such as 'awk', or 'tr', or a good IDE/text editor:

# Use 'tr' - "translate"
tr '\tr' ',' < file.tsv > file.csv

# Use 'sed' - "stream editor"

sed 's/'$'\t''/,/g' file.tsv > file.csv

# Use 'awk' - "pattern scanning and processing language"
awk 'BEGIN { FS="\t"; OFS="," } {$1=$1; print}' file.tsv>file.csv


