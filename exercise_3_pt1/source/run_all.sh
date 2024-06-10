#!/bin/bash
#
# a script to regenerate the paper found in the "paper" folder

# determine script's base directory
scriptdir=$(dirname $0)

# download the data
echo "downloading data"
$scriptdir/data/download_data.sh

# rerun the analysis
echo "running analysis"
$scriptdir/analysis/run_all_analysis.sh

# rerun the paper (after this the paper can be found in the paper folder)
# send output to log.txt file as there is a lot of output
echo "compiling paper"
$scriptdir/paper/compile_manuscript.sh > log.txt
