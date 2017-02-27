#!/bin/bash
output_location='~/nodata_'

for f in ~/*.tif;

do
  if $f ==
  gdal_calc.py -A $f --A_band=1 --outfile=$output_location${f:(-11)} --calc="A*(A<243)" --NoDataValue=0
done
