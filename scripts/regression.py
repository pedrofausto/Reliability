#!/usr/bin/python



# 38% 175.0E-12
# 40% 255.2E-12
# 48% 656.3E-12

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import statsmodels.formula.api as smf

%matplotlib


data = pd.read_csv('data.csv', index_col=0)
data.head()
data.shape

fig = plt.subplots(sharey=True)
data.plot(x='Ton', y='Delay')
lm = smf.ols(formula='Delay ~ Ton', data=data).fit()

result_params = lm.params
print result_params

X_new1 = pd.DataFrame({'Ton': [0.1]})
X_new2 = pd.DataFrame({'Ton': [0.15]})
X_new3 = pd.DataFrame({'Ton': [0.26]})
X_new4 = pd.DataFrame({'Ton': [0.32]})
X_new5 = pd.DataFrame({'Ton': [0.38]})
X_new6 = pd.DataFrame({'Ton': [0.4]})
X_new7 = pd.DataFrame({'Ton': [0.5]})
X_new8 = pd.DataFrame({'Ton': [0.6]})
X_new9 = pd.DataFrame({'Ton': [0.65]})
X_new10 = pd.DataFrame({'Ton': [0.7]})
X_new11 = pd.DataFrame({'Ton': [0.75]})
X_new12 = pd.DataFrame({'Ton': [0.8]})
X_new12 = pd.DataFrame({'Ton': [0.85]})


result1 = lm.predict(X_new1)
result2 = lm.predict(X_new2)
result3 = lm.predict(X_new3)
result4 = lm.predict(X_new4)
result5 = lm.predict(X_new5)
result6 = lm.predict(X_new6)
result7 = lm.predict(X_new7)
result8 = lm.predict(X_new8)
result9 = lm.predict(X_new9)
result10 = lm.predict(X_new10)
result11 = lm.predict(X_new11)
result12 = lm.predict(X_new12)

result = result1, result2, result3, result4, result5, result6, result7, result8, result9, result10, result11, result12
result.plot(x='Ton', y='Delay')

print result1
print result2
print result3
print result4
print result5
print result6
print result7
print result8
print result9
print result10
print result11
print result12


#plt.autoscale(enable=True, axis='both', tight=None)