#!/bin/bash
output_location='~/projected_'
for f in $(find ~/raw -name '???????.jpg');
do
  minMax=$(gdalinfo -mm $f | grep Min/Max)
  min=${minMax:6:9}
  max=${minMax:20:9}
  gdal_translate -of GTiff -co "COMPRESS-LZW" -scale $min $max 0 255 -ot Byte $f $output_location${f:(-11)}
done
