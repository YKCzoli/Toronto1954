#!/bin/bash
count=82
cat "~/GTATileList.csv" | while IFS=, read col1 col2 col3

do
  ~/geojasper --input $col1 --output ~/converted_$col3.tif
  ((count--))
  echo $count left
done
