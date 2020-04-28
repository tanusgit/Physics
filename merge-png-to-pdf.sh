#!/bin/bash -xe

for i in `ls -1`; do
    # Check if the file ends in .png
    if [ ${i: -4} == ".png" ]; then
        convert $i $i.pdf;
    fi
done

dt=`date '+%d:%m:%Y_%H:%M:%S'`
merged_file_name="converted$dt.pdf"
pdftk *.pdf cat output $merged_file_name
