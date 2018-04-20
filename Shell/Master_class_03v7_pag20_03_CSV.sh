#!/bin/bash

# Processing and filtering: Practice#2, section#3
# Go to ~/Data/opentraveldata
#3. How many optd_por_public.csv columns have “name” as part of their name? What are their numerical
# positions? (hint: use seq and paste)

csvcut -d '^' -n /home/dsc/Data/opentraveldata/optd_por_public.csv | csvgrep -d ':' -H -c 2 -m 'name' | tail -n +2 | wc -l
csvcut -d '^' -n /home/dsc/Data/opentraveldata/optd_por_public.csv | csvgrep -d ':' -H -c 2 -m 'name'

