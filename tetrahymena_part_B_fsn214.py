import pandas as pd
import numpy as np
import matplotlib
matplotlib.use('pdf')
import matplotlib.pyplot as plt
import seaborn as sns

tetrahymena= pd.read_csv("tetrahymena.tsv", sep='\t')
df= tetrahymena[(tetrahymena.diameter) > 19.2]
group_mean= df.groupby(['culture','glucose'])['conc','diameter'].mean() 
group_mean['log_conc']= np.log(group_mean.conc)
group_mean['log_diameter']= np.log(group_mean.diameter) 
group_mean= group_mean.reset_index()
plt.xlabel('log_conc')
plt.ylabel('log_diameter')
cluster= ['^','o']

