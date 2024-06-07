# Article: Age of Astronauts

# Authors and Primary Contact:
	Name: Dr. Jamie \
	ORCID: \
	Institution: \
	Address: \
	Email: 

    Name: You \
	ORCID: \
	Institution: \
	Address: \
	Email: 

    Name: Professor X. \
	ORCID: \
	Institution: \
	Address: \
	Email: 

This folder contains the draft article 'manuscript.pdf' for this article, as well as the source data, analysis, and scripts used to produce this article. 

# Data sources:

The data in the `data/datasets` folders is space walks data, containing publically available information about astronauts who participated in 
space missions before 15 January 2020 collected from NASA, Roscosmos, and fun-made websites. The provided information includes full astronaut 
name, sex, date of birth, nationality, military status, a title and year of a selection program, and information about each mission completed 
by a particular astronaut such as a year, ascend and descend shuttle names, mission and extravehicular activity (EVAs) durations.

The data was accessed from
https://data.mendeley.com/datasets/86tsnnbv2w/1
via
https://github.com/rfordatascience/tidytuesday/tree/master/data/2020/2020-07-14

# File overview

data/ \
download_data.sh \
dataset/ \
readme.md \
astronauts.csv

analysis/ \
astronaut_spacewalk_record_age_plot.py  \
astronaut_statistics.py  \
computational_env.txt  \
run_all_analysis.sh  \
spacewalk_record.pdf  \
statistics.tex

paper/ \
compile_manuscript.sh \
manuscript.pdf \
manuscript.tex \
refs.bib

# Usage

0. After downloading the repository, running the script `run_all.sh` will call the scripts in subfolders to follow the steps described below, downloading and analysing the dataset, and compiling the manuscript.

The scripts may also be called individually:

1. The data is downloaded and prepared using the script `download_data.sh` in the data folder.

This bash script downloads a copy of the data compiled from open available online sources 2024-05-10. See source information below and dataset description above. 

2. Scripts for analyzing data (in the analysis folder) were developed using Python version 3.11.5.

Required packages include:
* numpy
* matplotlib
* pandas

A full set of python packages in the computational environment can be seen in `exercise_2/analysis/computational_env.txt`.

The Python software and its dependencies are loaded from the [CVMFS Compute Canada software stack, StdEnv/2023](https://docs.alliancecan.ca/wiki/Accessing_CVMFS)

3. Scripts for generating the paper 
The paper is generated using the `compile_manuscript.sh` script in the `paper` folder.

It depends on Tex and Bibtex, available from [CVMFS Compute Canada software stack, StdEnv/2023](https://docs.alliancecan.ca/wiki/Accessing_CVMFS).

