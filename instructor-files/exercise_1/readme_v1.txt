This readme file was generated on [2024-05-27] by Shahira Khair

--------------------
GENERAL INFORMATION
--------------------

1. Title of Dataset: astronaut_dataset

2. Author and Primary Contact:
		Name: Shahira Khair
		ORCID: 0000-0002-6316-7399
		Institution: University of Victoria Libraries
		Address: 3800 Finnerty Road, Victoria BC V8W 3H5
		Email: skhair@uvic.ca

3. Date of data collection: This dataset was compiled from open available online sources 2024-05-10. See source information below. 

4. Dataset Description: This dataset compiles publically available records on space launches and spaces walks. 
The space launches data includes information on successful and failed space launches between 1957 and 2018, space vehibles, mission names, 
and the associated space agenciesThe space walks data contains publically available information about all astronauts who participated in 
space missions before 15 January 2020 collected from NASA, Roscosmos, and fun-made websites. The provided information includes full astronaut 
name, sex, date of birth, nationality, military status, a title and year of a selection program, and information about each mission completed 
by a particular astronaut such as a year, ascend and descend shuttle names, mission and extravehicular activity (EVAs) durations.

-----------------------------------
SHARING/ACCESS INFORMATION
-----------------------------------

1. Licenses/restrictions placed on the data: CC BY 4.0

2. Links to publications that cite or use the data: 

"The space race is dominated by new contenders." (2018). The Economist. 
https://www.economist.com/graphic-detail/2018/10/18/the-space-race-is-dominated-by-new-contenders.

Corlett, T., Stavnichuk, M., and Komarova, S.V. (2020). Population analysis of space travelers. Life Sciences in Space Research, 27, 1-5. 
doi: 10.1016/j.lssr.2020.06.003.

3. Was data derived from another source? 
	A. If yes, list source(s):

TheEconomist. (2018). "2018-10-20_space-launches", GitHub repository.
https://github.com/TheEconomist/graphic-detail-data/tree/master/data/2018-10-20_space-launches

Stavnichuk, Mariya; Corlett, Tatsuya. (2020). “Astronaut database”, Mendeley Data, V1.
doi: 10.17632/86tsnnbv2w.1

-------------------------
DATA & FILE OVERVIEW
-------------------------

1. File List: 

Data/
agencies.csv
astronauts.csv
launches.csv

Scripts/
astronautdata.txt
cleaningscript.txt

Documentation/
codebook.txt
corlett_etal_2020.pdf

-------------------------
INSTALL & METHODOLOGY
-------------------------

1. Scripts for cleaning and analyzing data were developed using R version 4.4.0.

2. Required packages:
tidyverse (1.3.0)
janitor (2.2.0)
knitr (1.46)

-------------------------------------------
DATA-SPECIFIC INFORMATION FOR: agencies.csv
------------------------------------------- 

<repeat this section for each dataset, folder or file, as appropriate>

1. Number of variables: 19

2. Number of cases/rows: 74

3. Variable List:

| variable           | definition              |
| ------------------ | ----------------------- |
| agency             | org phase code          |
| count              | number of launches      |
| ucode              | org Ucode               |
| state_code         | responsible state       |
| type               | type of org             |
| class              | class of org            |
| tstart             | org/phase founding date |
| tstop              | org/phase ending date   |
| short_name         | short name              |
| name               | full name               |
| location           | plain english location  |
| longitude          |                         |
| latitude           |                         |
| error              | uncertainty in long/lat |
| parent             | parent org              |
| short_english_name | english short name      |
| english_name       | english full name       |
| unicode_name       | unicode full name       |
| agency_type        | type of agency          |

4. Missing data codes: " - " indicated unknown/missing value

5. Specialized formats or other abbreviations used: unavailable



-------------------------------------------
DATA-SPECIFIC INFORMATION FOR: astronauts.csv
------------------------------------------- 

1. Number of variables: 24

2. Number of cases/rows: 1279

3. Variable List: 

| variable                 | class     | description                                               |
| :----------------------- | :-------- | --------------------------------------------------------- |
| id                       | double    | ID                                                        |
| number                   | double    | Number                                                    |
| nationwide_number        | double    | Number within country                                     |
| name                     | character | Full  name                                                |
| original_name            | character | Name in original language                                 |
| sex                      | character | Sex                                                       |
| year_of_birth            | double    | Year of birth                                             |
| nationality              | character | Nationality                                               |
| military_civilian        | character | Military status                                           |
| selection                | character | Name of selection program                                 |
| year_of_selection        | double    | Year of selection program                                 |
| mission_number           | double    | Mission number                                            |
| total_number_of_missions | double    | Total number of missions                                  |
| occupation               | character | Occupation                                                |
| year_of_mission          | double    | Mission year                                              |
| mission_title            | character | Mission title                                             |
| ascend_shuttle           | character | Name of ascent shuttle                                    |
| in_orbit                 | character | Name of spacecraft used in orbit                          |
| descend_shuttle          | character | Name of descent shuttle                                   |
| hours_mission            | double    | Duration of mission in hours                              |
| total_hrs_sum            | double    | Total duration of all missions in hours                   |
| field21                  | double    | Instances of EVA by mission                               |
| eva_hrs_mission          | double    | Duration of extravehicular activities  during the mission |
| total_eva_hrs            | double    | Total duration of all extravehicular activities in hours  |

4. Missing data codes: NA

5. Specialized formats or other abbreviations used: NA



-------------------------------------------
DATA-SPECIFIC INFORMATION FOR: launches.csv
------------------------------------------- 

1. Number of variables: 11

2. Number of cases/rows: 5726

3. Variable List: 

| variable    | definition                               |
| ----------- | ---------------------------------------- |
| tag         | Harvard or [COSPAR][cospar] id of launch |
| JD          | [Julian Date][jd] of launch              |
| launch_date | date of launch                           |
| launch_year | year of launch                           |
| type        | type of launch vehicle                   |
| variant     | variant of launch vehicle                |
| mission     |
| agency      | launching agency                         |
| state_code  | launching agency's state                 |
| category    | success (O) or failure (F)               |
| agency_type | type of agency                           |


4. Missing data codes: blank

5. Specialized formats or other abbreviations used: CN (China), IN (India), RU (Russia), SU (Soviet Union), US (United States), 
