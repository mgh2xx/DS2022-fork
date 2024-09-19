#!/bin/bash

# Fetching tarball
curl -o lab3-bundle.tar.gz https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

# Decompressing tarball and getting TSV file name
tar -xzf lab3-bundle.tar.gz
TSV=$(ls | grep .tsv)

# Removing empty rows from the dataset
awk '!/^[[:space:]]*$/' $TSV > cleaned.tsv

# Converting TSV file to CSV file
tr '\t' ',' < cleaned.tsv > cleaned.csv

# Removing cleaned tsv file
rm cleaned.tsv


# Counting and printing the number of lines of data in the CSV file
NUM_LINES=$(($(wc -l < cleaned.csv)-1))
echo "There are $NUM_LINES rows of data in the csv file"

# Creating new tarball with cleaned CSV file
tar -czf converted-archive.tar.gz cleaned.csv


