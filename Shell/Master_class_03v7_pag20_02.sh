#!/bin/bash

# Processing and filtering. Practice# 2. Section# 2: 
# Go to ~/Data/opentraveldata
# Use grep to obtain the number of airlines with prefix “aero” in their name from optd_airlines.csv

cut -d "^" -f 8 /home/dsc/Data/opentraveldata/optd_airlines.csv | grep -i "^aero" | wc -l


