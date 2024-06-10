EDIT: 

This folder is a modification of the `../exercise_2` analysis code where the
scripts have been updated to:
- run regardless of what directory they're called from
- produce output in the current working directory
- maybe not do things that will fail, like `module load` (not available in the
  container environment)

-- original:

This folder is designed for the analysis of astronaut data and a publication of a journal article per the same.

It contains: 
* an analysis folder for analyzing the data
* a data folder for holding the source data
* a paper manuscript folder, holding the draft publication

The paper and all analysis can be recreated by rerunning 

Data source:
https://data.mendeley.com/datasets/86tsnnbv2w/1
via
https://github.com/rfordatascience/tidytuesday/tree/master/data/2020/2020-07-14

Dependencies:
* a bash shell
* [CVMFS Compute Canada software stack, StdEnv/2023](https://docs.alliancecan.ca/wiki/Accessing_CVMFS)
