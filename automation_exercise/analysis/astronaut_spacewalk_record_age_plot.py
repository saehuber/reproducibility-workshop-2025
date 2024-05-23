import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('../data/dataset/astronauts.csv')

# Get all unique years in the dataframe
years = df['year_of_mission'].unique()
    
# Sort the years in ascending order
years.sort()

df['current_record_eva_hours'] = np.nan

for year in years:
    # Filter the dataframe for missions before the specified year
    filtered_df = df[df['year_of_mission'] < year]
    
    # Find the maximum EVA hours
    curr_max_eva_hours = filtered_df['eva_hrs_mission'].max()

    if pd.notnull(curr_max_eva_hours):
        curr_max_eva_hours_index = filtered_df['eva_hrs_mission'].idxmax()
        # Add the maximum EVA hours to a new column in the original dataframe
        df.loc[curr_max_eva_hours_index,'current_record_eva_hours'] = curr_max_eva_hours

df['age'] = df['year_of_mission'] - df['year_of_birth']

plt.rc('text', usetex=True)
plt.rc('font', family='serif')

fig, ax = plt.subplots()

ax.set_xlabel('Year', fontsize=18)
ax.set_ylabel('New record spacewalk length (Hours)', fontsize=18)

h = ax.scatter(df['year_of_mission'],df['current_record_eva_hours'], c=df['age'], cmap='viridis')

#im, orientation="horizontal"
cbar = fig.colorbar(h, label='Age')
 
# save and show the plot
plt.tight_layout()
plt.savefig("spacewalk_record.pdf")
#plt.show()