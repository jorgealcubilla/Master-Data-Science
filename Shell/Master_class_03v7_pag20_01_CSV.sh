#!/bin/bash

# Processing and filtering: Practice#2, section#1
# Go to ~/Data/opentraveldata
# 1. Use grep to extract all 7x7 or 3xx (where x can be any number) airplane models from optd_aircraft.csv.


csvgrep -d '^' -c model -r '(?<!\d)7\d7(?!\d)|(?<!\d)3\d\d(?!\d)' /home/dsc/Data/opentraveldata/optd_aircraft.csv | csvcut -c model


