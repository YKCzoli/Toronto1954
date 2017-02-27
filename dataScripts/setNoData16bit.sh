#!/bin/bash

cat "~/list.csv" | while IFS=, read col1 col2, col3

do
  gdal_calc.py -A $col1 --outfile=$col2 --calc="A*(A<31213)" --NoDataValue=0
done
