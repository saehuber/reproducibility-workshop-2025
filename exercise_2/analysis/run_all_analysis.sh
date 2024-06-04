#!/bin/bash
module load python/3.11.5
module load scipy-stack/2023b

#print information about python computational environment to file
python --version > computational_env.txt
pip freeze >> computational_env.txt

#run all python files
for file in *.py
do
  echo "Running $file"
  python "$file"
done