#!/bin/bash

# a script to regenerate the paper found in the "paper" folder

# download the data
cd data
echo "downloading data"
#./download_data.sh
cd ..

# rerun the analysis
cd analysis
echo "running analysis"
./run_all_analysis.sh
cd ..

# rerun the paper (after this the paper can be found in the paper folder)
cd paper
echo "compiling paper"
./compile_manuscript.sh
cd ..
