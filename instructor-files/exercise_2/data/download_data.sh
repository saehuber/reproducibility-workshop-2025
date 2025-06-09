#!/bin/bash

# create the dataset folder
mkdir -p dataset

# enter the dataset folder
cd dataset

# download the data
wget https://object-arbutus.cloud.computecanada.ca/RCSWorkshopMedia/2025-06-10-COSS-Reproducible-Research/astronauts_full.csv
wget https://object-arbutus.cloud.computecanada.ca/RCSWorkshopMedia/2025-06-10-COSS-Reproducible-Research/readme.md

# change the name of the dataset
mv astronauts_full.csv astronauts.csv

# move back to original directory
cd ..
