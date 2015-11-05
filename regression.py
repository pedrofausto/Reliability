#!/usr/bin/python

#%matplotlib inline

import pandas as pd
import matplotlib as plt
import numpy as np
import statsmodels as smf



data = pd.read_csv('data.csv', index_col=0)
data.head()

data.shape

fig, axs = plt.subplots(1, 3, sharey=True)
data.plot(kind='scatter', x='Ton', y='Delay', ax=axs[0], figsize=(16, 8))
lm = smf.ols(formula='Delay ~ Ton', data=data).fit()

result = lm.params
print result

X_new = pd.DataFrame({'Ton': [0.6]})
X_new.head()

print X_new

result = lm.predict(X_new)
print result