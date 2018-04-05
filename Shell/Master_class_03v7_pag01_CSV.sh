#!/bin/bash

# Shell script: section#1
# 1. Create a script that accepts a CSV filename as input ($1 inside your script) and returns the model of the
#  aircraft with the highest number of engines. (use it on ~/Data/opentraveldata/optd_aircraft.csv)

FILE="$1"

csvsort -d '^' -c nb_engines -r $FILE | csvgrep -c nb_engines -r "^$" -i| csvcut -c manufacturer,model | tail -n +2 | head -n 1 | csvlook





