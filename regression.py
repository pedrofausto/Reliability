#!/usr/bin/python

#%matplotlib inline

# 38% 175.0E-12
# 40% 255.2E-12
# 48% 656.3E-12

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
print result_params

X_new4 = pd.DataFrame({'Ton': [0.4]})
X_new5 = pd.DataFrame({'Ton': [0.5]})
X_new6 = pd.DataFrame({'Ton': [0.6]})
X_new7 = pd.DataFrame({'Ton': [0.7]})
X_new8 = pd.DataFrame({'Ton': [0.8]})


result4 = lm.predict(X_new4)
result5 = lm.predict(X_new5)
result6 = lm.predict(X_new6)
result7 = lm.predict(X_new7)
result8 = lm.predict(X_new8)
print X_new4.head() 
print result4

print X_new5.head() 
print result5 

print X_new6.head() 
print result6

print X_new7.head() 
print result7 

print X_new8.head() 
print result8

print data