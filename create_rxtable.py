#!/usr/bin/python


import argparse
import os
import sys, time
import  csv
import numpy

years = 5

tabela1 = open('tabela1.csv','w')
flag = True
initialAge = 24
initialTemp = 0
ageStep = 8760.0/100.0
tempStep = 101.0/100.0

tabela1.write('vdd,temp,act,period,age\n')
tabela1.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')

for step in range(1,101):
  if flag == True:
    temp = numpy.random.normal(80,10)
    tabela1.write('1.1,' + str("{0:.2f}".format(temp)) +',20,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    age = age + ageStep
    temp = numpy.random.normal(80,10)
    tabela1.write('1.1,' + str("{0:.2f}".format(temp)) +',20,40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela1.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')

tabela2 = open('tabela2.csv','w')
flag = True
initialAge = 24
initialTemp = 0
ageStep = 8760.0/100.0
tempStep = 101.0/100.0

tabela2.write('vdd,temp,act,period,age\n')
tabela2.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')

for step in range(1,101):
  if flag == True:
    temp = numpy.random.normal(60,10)
    tabela2.write('1.1,' + str("{0:.2f}".format(temp)) +',20,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    age = age + ageStep
    temp = numpy.random.normal(60,10)
    tabela2.write('1.1,' + str("{0:.2f}".format(temp)) +',20,40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela2.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')    

tabela3 = open('tabela3.csv','w')
flag = True
initialAge = 24
initialTemp = 0
ageStep = 8760.0/100.0
tempStep = 101.0/100.0

tabela3.write('vdd,temp,act,period,age\n')
tabela3.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')

for step in range(1,101):
  if flag == True:
    temp = numpy.random.normal(40,10)
    tabela3.write('1.1,' + str("{0:.2f}".format(temp)) +',20,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    age = age + ageStep
    temp = numpy.random.normal(40,10)
    tabela3.write('1.1,' + str("{0:.2f}".format(temp)) +',20,40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela3.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')    

tabela4 = open('tabela4.csv','w')
vdd = 1.1
flag = True
initialAge = 24
initialTemp = 20
initialActivity = 20
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela4.write('vdd,temp,act,period,age\n')
tabela4.write('1.1,27,20,40us,23\n')

for step in range(1,101):
  if flag == True:
    temp = numpy.random.normal(80,10)
    tabela4.write('1.1,20,20,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    age = age + ageStep
    temp = numpy.random.normal(80,10)
    tabela4.write('1.1,20,20,40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela4.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')  

tabela5 = open('tabela5.csv','w')
vdd = 1.1
flag = True
initialAge = 24
initialTemp = 100
initialActivity = 20
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela5.write('vdd,temp,act,period,age\n')
tabela5.write('1.1,27,20,40us,23\n')

for step in range(1,101):
  if flag == True:
    temp = numpy.random.normal(80,10)
    tabela5.write('1.1,100,20,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    age = age + ageStep
    temp = numpy.random.normal(80,10)
    tabela5.write('1.1,100,20,40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela5.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')    

tabela6 = open('tabela6.csv','w')
vdd = 1.1
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 0
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela6.write('vdd,temp,act,period,age\n')
tabela6.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')

for step in range(1,101):
  if flag == True:
    activity = numpy.random.normal(80,10)
    tabela6.write(str(vdd) + ',' + str(initialTemp) + ',' + str("{0:.2f}".format(activity)) + ',40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
  else:
    age = age + ageStep
    activity = numpy.random.normal(80,10)
    tabela6.write(str(vdd) + ',' + str(initialTemp) + ',' + str("{0:.2f}".format(activity)) + ',40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela6.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')      


tabela7 = open('tabela7.csv','w')
vdd = 1.1
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 0
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela7.write('vdd,temp,act,period,age\n')
tabela7.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')

for step in range(1,101):
  if flag == True:
    activity = numpy.random.normal(50,10)
    tabela7.write(str(vdd) + ',' + str(initialTemp) + ',' + str("{0:.2f}".format(activity)) + ',40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
  else:
    age = age + ageStep
    activity = numpy.random.normal(50,10)
    tabela7.write(str(vdd) + ',' + str(initialTemp) + ',' + str("{0:.2f}".format(activity)) + ',40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela7.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')  

tabela8 = open('tabela8.csv','w')
vdd = 1.1
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 0
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela8.write('vdd,temp,act,period,age\n')
tabela8.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')
for step in range(1,101):
  if flag == True:
    activity = numpy.random.normal(20,10)
    tabela8.write(str(vdd) + ',' + str(initialTemp) + ',' + str("{0:.2f}".format(activity)) + ',40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
  else:
    age = age + ageStep
    activity = numpy.random.normal(20,10)
    tabela8.write(str(vdd) + ',' + str(initialTemp) + ',' + str("{0:.2f}".format(activity)) + ',40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela8.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')  

tabela9 = open('tabela9.csv','w')
vdd = 1.1
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 0
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela9.write('vdd,temp,act,period,age\n')
tabela9.write('1.1,27,0,40us,23\n')

for step in range(1,101):
  if flag == True:
    tabela9.write('1.1,27,0,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    age = age + ageStep
    tabela9.write('1.1,27,0,40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela9.write('1.1,27,0,40us,' + str("{0:.2f}".format(age)) +'\n')  

tabela10 = open('tabela10.csv','w')
vdd = 1.1
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 100
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela10.write('vdd,temp,act,period,age\n')
tabela10.write('1.1,27,20,40us,23\n')
for step in range(1,101):
  if flag == True:
    tabela10.write('1.1,27,100,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    age = age + ageStep
    tabela10.write('1.1,27,100,40us,' + str("{0:.2f}".format(age)) +'\n')
age = age + ageStep
tabela10.write('1.1,27,100,40us,' + str("{0:.2f}".format(age)) +'\n')      

tabela11 = open('tabela11.csv','w')
vdd = 0.0
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 20
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela11.write('vdd,temp,act,period,age\n')
tabela11.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')
for step in range(1,101):
  if flag == True:
    while (vdd < 0.8) or (vdd > 1.2):  
      vdd = numpy.random.normal(1.1,0.5)

    tabela11.write(str("{0:.2f}".format(vdd)) + ',' + str(initialTemp) + ',' + str(initialActivity) + ',40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    vdd = 0.0
  else:
    age = age + ageStep
    while (vdd < 0.8) or (vdd > 1.2):  
      vdd = numpy.random.normal(1.1,0.5)
    tabela11.write(str("{0:.2f}".format(vdd)) + ',' + str(initialTemp) + ',' + str(initialActivity) + ',40us,' + str("{0:.2f}".format(age)) +'\n')
    vdd = 0.0

age = age + ageStep
tabela11.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')  

tabela12 = open('tabela12.csv','w')
vdd = 0.0
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 20
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela12.write('vdd,temp,act,period,age\n')
tabela12.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')
for step in range(1,101):
  if flag == True:
    while (vdd < 0.8) or (vdd > 1.2):  
      vdd = numpy.random.normal(1.0,0.5)

    tabela12.write(str("{0:.2f}".format(vdd)) + ',' + str(initialTemp) + ',' + str(initialActivity) + ',40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    vdd = 0.0
  else:
    age = age + ageStep
    while (vdd < 0.8) or (vdd > 1.2):  
      vdd = numpy.random.normal(1.0,0.5)
    tabela12.write(str("{0:.2f}".format(vdd)) + ',' + str(initialTemp) + ',' + str(initialActivity) + ',40us,' + str("{0:.2f}".format(age)) +'\n')
    vdd = 0.0

age = age + ageStep
tabela12.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')  

tabela13 = open('tabela13.csv','w')
vdd = 0.0
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 20
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela13.write('vdd,temp,act,period,age\n')
tabela13.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')
for step in range(1,101):
  if flag == True:
    while (vdd < 0.8) or (vdd > 1.2):  
      vdd = numpy.random.normal(0.9,0.5)
    tabela13.write(str("{0:.2f}".format(vdd)) + ',' + str(initialTemp) + ',' + str(initialActivity) + ',40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    vdd = 0.0
  else:
    age = age + ageStep
    while (vdd < 0.8) or (vdd > 1.2):  
      vdd = numpy.random.normal(0.9,0.5)
    tabela13.write(str("{0:.2f}".format(vdd)) + ',' + str(initialTemp) + ',' + str(initialActivity) + ',40us,' + str("{0:.2f}".format(age)) +'\n')
    vdd = 0.0

age = age + ageStep
tabela13.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')  

tabela14 = open('tabela14.csv','w')
vdd = 0.8
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 20
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela14.write('vdd,temp,act,period,age\n')
tabela14.write('0.8,27,20,40us,23\n')
for step in range(1,101):
  if flag == True:
    temp = numpy.random.normal(80,10)
    tabela14.write('0.8,27,20,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    age = age + ageStep
    tabela14.write('0.8,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela14.write('0.8,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')  

tabela15 = open('tabela15.csv','w')
vdd = 1.2
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 20
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela15.write('vdd,temp,act,period,age\n')
tabela15.write('1.2,27,20,40us,23\n')
for step in range(1,101):
  if flag == True:
    tabela15.write('1.2,27,20,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    age = age + ageStep
    tabela15.write('1.2,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela15.write('1.2,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')

tabela16 = open('tabela16.csv','w')
vdd = 0.0
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 20
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela16.write('vdd,temp,act,period,age\n')
tabela16.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')
for step in range(1,101):
  if flag == True:
    while (vdd < 0.8) or (vdd > 1.2):  
      vdd = numpy.random.normal(0.9,0.3)
      temp = numpy.random.normal(40,7)
      activity = numpy.random.normal(20,7)

    tabela16.write(str("{0:.2f}".format(vdd)) + ',' + str("{0:.2f}".format(temp)) + ',' + str("{0:.2f}".format(activity)) + ',40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    vdd = 0.0
  else:
    age = age + ageStep
    while (vdd < 0.8) or (vdd > 1.2):  
      vdd = numpy.random.normal(0.9,0.3)
      temp = numpy.random.normal(40,7)
      activity = numpy.random.normal(20,7)
    tabela16.write(str("{0:.2f}".format(vdd)) + ',' + str("{0:.2f}".format(temp)) + ',' + str("{0:.2f}".format(activity)) + ',40us,' + str("{0:.2f}".format(age)) +'\n')
    vdd = 0.0

age = age + ageStep
tabela16.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n') 

tabela17 = open('tabela17.csv','w')
vdd = 0.0
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 20
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0



tabela17.write('vdd,temp,act,period,age\n')
tabela17.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')
for step in range(1,101):
  if flag == True:
    while (vdd < 0.8) or (vdd > 1.2):  
      vdd = numpy.random.normal(1.0,0.3)
      temp = numpy.random.normal(60,7)
      activity = numpy.random.normal(50,7)

    tabela17.write(str("{0:.2f}".format(vdd)) + ',' + str("{0:.2f}".format(temp)) + ',' + str("{0:.2f}".format(activity)) + ',40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    vdd = 0.0
  else:
    age = age + ageStep
    while (vdd < 0.8) or (vdd > 1.2):  
      vdd = numpy.random.normal(1.0,0.3)
      temp = numpy.random.normal(60,7)
      activity = numpy.random.normal(50,7)
    tabela17.write(str("{0:.2f}".format(vdd)) + ',' + str("{0:.2f}".format(temp)) + ',' + str("{0:.2f}".format(activity)) + ',40us,' + str("{0:.2f}".format(age)) +'\n')
    vdd = 0.0

age = age + ageStep
tabela17.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n') 


tabela18 = open('tabela18.csv','w')
vdd = 0.0
flag = True
initialAge = 24
initialTemp = 27
initialActivity = 20
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0


tabela18.write('vdd,temp,act,period,age\n')
tabela18.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')
for step in range(1,101):
  if flag == True:
    while (vdd < 0.8) or (vdd > 1.2):  
      vdd = numpy.random.normal(1.1,0.3)
      temp = numpy.random.normal(80,7)
      activity = numpy.random.normal(80,7)

    tabela18.write(str("{0:.2f}".format(vdd)) + ',' + str("{0:.2f}".format(temp)) + ',' + str("{0:.2f}".format(activity)) + ',40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    vdd = 0.0
  else:
    age = age + ageStep
    while (vdd < 0.8) or (vdd > 1.2):  
      vdd = numpy.random.normal(1.1,0.3)
      temp = numpy.random.normal(80,7)
      activity = numpy.random.normal(80,7)
    tabela18.write(str("{0:.2f}".format(vdd)) + ',' + str("{0:.2f}".format(temp)) + ',' + str("{0:.2f}".format(activity)) + ',40us,' + str("{0:.2f}".format(age)) +'\n')
    vdd = 0.0

age = age + ageStep
tabela18.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')


tabela19 = open('tabela19.csv','w')
vdd = 0.8
flag = True
initialAge = 24
initialTemp = 20
initialActivity = 0
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela19.write('vdd,temp,act,period,age\n')
tabela19.write('1.1,27,20,40us,23\n')
for step in range(1,101):
  if flag == True:
    temp = numpy.random.normal(80,10)
    tabela19.write('0.8,20,0,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    age = age + ageStep
    tabela19.write('0.8,20,0,40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela19.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n') 


tabela20 = open('tabela20.csv','w')
vdd = 1.2
flag = True
initialAge = 24
initialTemp = 100
initialActivity = 100
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0

tabela20.write('vdd,temp,act,period,age\n')
tabela20.write('1.1,27,20,40us,23\n')
for step in range(1,101):
  if flag == True:
    temp = numpy.random.normal(80,10)
    tabela20.write('1.2,100,100,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    age = age + ageStep
    tabela20.write('1.2,100,100,40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
tabela20.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')

tabela21 = open('tabela21.csv','w')
vdd = 1.1
flag = True
initialAge = 24
initialTemp = 100
initialActivity = 100
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0
swapFlag = True;

tabela21.write('vdd,temp,act,period,age\n')
tabela21.write('1.1,27,20,40us,23\n')
for step in range(1,101):
  if flag == True:
    tabela21.write('1.1,20,80,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    if swapFlag == True:
      age = age + ageStep
      tabela21.write('0.8,20,80,40us,' + str("{0:.2f}".format(age)) +'\n')
      swapFlag = False
    else:
      age = age + ageStep
      tabela21.write('1.2,100,80,40us,' + str("{0:.2f}".format(age)) +'\n')
      swapFlag = True

age = age + ageStep
tabela21.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')

tabela22 = open('tabela22.csv','w')
vdd = 1.1
flag = True
initialAge = 24
initialTemp = 100
initialActivity = 100
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0
count = 0;

tabela22.write('vdd,temp,act,period,age\n')
tabela22.write('1.1,27,20,40us,23\n')
for step in range(1,101):
  if flag == True:
    tabela22.write('1.1,20,80,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    if count < 49:
      age = age + ageStep
      tabela22.write('0.8,20,80,40us,' + str("{0:.2f}".format(age)) +'\n')
      count = count + 1
    else:
      age = age + ageStep
      tabela22.write('1.2,100,80,40us,' + str("{0:.2f}".format(age)) +'\n')
      count = count + 1

age = age + ageStep
tabela22.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')

tabela23 = open('tabela23.csv','w')
vdd = 1.1
flag = True
initialAge = 24
initialTemp = 100
initialActivity = 100
ageStep = 8760.0/100.0
tempStep = 0
activityStep = 101.0/100.0
count = 0;

tabela23.write('vdd,temp,act,period,age\n')
tabela23.write('1.1,27,20,40us,23\n')
for step in range(1,101):
  if flag == True:
    tabela23.write('1.1,20,80,40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
    
  else:
    if count < 49:
      age = age + ageStep
      tabela23.write('1.2,100,80,40us,' + str("{0:.2f}".format(age)) +'\n')
      count = count + 1
    else:
      age = age + ageStep
      tabela23.write('0.8,20,80,40us,' + str("{0:.2f}".format(age)) +'\n')
      count = count + 1

age = age + ageStep
tabela23.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')