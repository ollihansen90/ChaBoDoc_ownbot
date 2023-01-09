#!/bin/bash
# requires ImageMagick
shopt -s nullglob
for filename in $(find $dir -name '*.png'); do
  epsname=${filename%.png}.eps
  echo "processing $filename $epsname"
  convert $filename eps3:$epsname
done
shopt -u nullglob