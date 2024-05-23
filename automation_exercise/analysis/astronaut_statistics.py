import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('../data/dataset2/astronauts.csv')
df2 = pd.read_csv('../data/dataset1/agencies.csv')
df3 = pd.read_csv('../data/dataset1/launches.csv')


#df['age'] = df['year_of_mission'] - df['year_of_birth']

df['Age on selection'] = df['year_of_selection'] - df['year_of_birth']
df['Age on mission'] = df['year_of_mission'] - df['year_of_birth']

df.agg(
    {
        "Age on selection": ["min", "max", "median", "mean"],
        "Age on mission": ["min", "max", "median", "mean"],
    }
).to_latex('statistics.tex')

#print(df['age_selection', 'age_mission'].mean().to_latex())