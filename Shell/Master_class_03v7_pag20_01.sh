#!/bin/bash

cut -d "^" -f 3 /home/dsc/Data/opentraveldata/optd_aircraft.csv | grep -P '(?<!\d)7\d7(?!\d)|(?<!\d)3\d\d(?!\d)'
