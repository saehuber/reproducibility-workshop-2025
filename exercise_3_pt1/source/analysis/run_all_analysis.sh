#!/bin/bash

# NOTE: lmod is not available in the containerized environment
#module load python/3.11.5
#module load scipy-stack/2023b

# Python files are in this script's directory, but we might not be there
scriptdir=$(dirname $0)

#print information about python computational environment to file
python --version > computational_env.txt
pip freeze >> computational_env.txt

#run all python files
for file in $scriptdir/*.py
do
  echo "Running $file"
  python "$file"
done
