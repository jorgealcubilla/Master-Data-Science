#!/bin/bash

# Shell script: section#1
# 1. Create a script that accepts a CSV filename as input ($1 inside your script) and returns the model of the
#  aircraft with the highest number of engines. (use it on ~/Data/opentraveldata/optd_aircraft.csv)

FILE="$1"

cat $FILE | sort -t'^' -k7rn,7  | head -n 1 | cut -d '^' -f 2




