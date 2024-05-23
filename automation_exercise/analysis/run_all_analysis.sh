#!/bin/bash
module load python/3.11.5
module load scipy-stack/2023b

for file in *.py
do
  echo "Running $file"
  python "$file"
done


#idea: pass paths as variables to the scripts
#if name=main in python scripts??

#python astronaut_spacewalk_record_age_plot.py