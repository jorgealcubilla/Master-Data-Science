#!/bin/bash

# Processing and filtering: Practice#2, section#4
# Go to ~/Data/opentraveldata
# 4. Find all files with txt extension that have word “Science” (case unsensitive) inside the content. Print file
# path and the line contaning the (S/s)cience word.

find -type f -name "*.txt" -exec grep -w -H -i "science" {} \; 


