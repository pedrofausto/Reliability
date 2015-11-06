#!/usr/bin/python

#%matplotlib inline

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import statsmodels.formula.api as smf



data = pd.read_csv('data.csv', index_col=0)
data.head()
data.shape

fig, axs = plt.subplots(1, 3, sharey=True)
data.plot(kind='scatter', x='Ton', y='Delay', ax=axs[0], figsize=(16, 8))
lm = smf.ols(formula='Delay ~ Ton', data=data).fit()

result_params = lm.params

X_new4 = pd.DataFrame({'Ton': [0.4]})
X_new6 = pd.DataFrame({'Ton': [0.6]})
X_new8 = pd.DataFrame({'Ton': [0.8]})


result4 = lm.predict(X_new4)
result6 = lm.predict(X_new6)
result8 = lm.predict(X_new8)
print X_new4.head() 
print result4 

print X_new6.head() 
print result6

print X_new8.head() 
print result8