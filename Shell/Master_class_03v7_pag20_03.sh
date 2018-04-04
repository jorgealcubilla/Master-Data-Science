#!/bin/bash

# Processing and filtering: Practice#2, section#3
# Go to ~/Data/opentraveldata
#3. How many optd_por_public.csv columns have “name” as part of their name? What are their numerical
# positions? (hint: use seq and paste)

cat /home/dsc/Data/opentraveldata/optd_por_public.csv | head -n 1 | tr "^" "\n" | wc -l

paste <(seq 46) <(cat /home/dsc/Data/opentraveldata/optd_por_public.csv | head -n 1 | tr "^" "\n") | grep -i name | wc -l


