import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# read dataframe
df = pd.read_csv('../data/dataset/astronauts.csv')

# Calculate ages
df['Age on selection'] = df['year_of_selection'] - df['year_of_birth']
df['Age on mission'] = df['year_of_mission'] - df['year_of_birth']


# Compute statistics on new variables and print to latex table
df.agg(
    {
        "Age on selection": ["min", "max", "median", "mean"],
        "Age on mission": ["min", "max", "median", "mean"],
    }
).to_latex('statistics.tex')
