#!/usr/bin/python

import argparse
import os
import sys, time
import  csv
import time
import numpy as np

tempProfileStep = []
vddProfileStep = []
# tempProfileList = [][]
# vddProfileList = [][]

initialDate = time.strftime("%a %b %d %H:%M:%S %Z %Y")

print "Start simulation at: " + initialDate

parser = argparse.ArgumentParser()

parser.add_argument("inputFile", help="input file with profiling environment conditions. Must be a CSV formatd file")
parser.add_argument("outputFile", help="output table file as a CSV formatd file")

# group = parser.add_mutually_exclusive_group()
# group.add_argument("-a", "--age", action="store_true", help="Aging flow. Extract aging values")
# group.add_argument("-r", "--run", action="store_true", help="Run a simulation with aged values")

args = parser.parse_args()

bashCommand="clear"
os.system(bashCommand)

print "Evaluating options and values..."

print "\n..."
if args.inputFile == None :
    print "Environmental conditions must be provided. Please provide an input file."
    print "Quiting..."
    quit()
elif args.outputFile == None :
    print "Environmental conditions CSV file name must be provided."
    print "Quiting..."
    quit()

table = open(args.outputFile,'w')


with open(args.inputFile, 'rb') as csvfile:
  reader = csv.reader(csvfile)
  data = list(reader)
  lineQuant = len(data)

with open(args.inputFile, 'rb') as csvfile:
  reader = csv.reader(csvfile)
  try:
    for row in reader:
      if reader.line_num == 1 :
        argQuantity = len(row)
      	tempProfileStep = row[0:(argQuantity/2)]
        vddProfileStep = row[(argQuantity/2) : argQuantity+1]
        tempProfileList = np.zeros((lineQuant-1, argQuantity/2))
        vddProfileList = np.zeros((lineQuant-1, argQuantity/2))
      else:
        tempProfileList [(reader.line_num)-2][0:(argQuantity/2)]  = row[0:(argQuantity/2)]
        vddProfileList [(reader.line_num)-2][0:(argQuantity/2)]  = row[(argQuantity/2) : argQuantity+1]
  except csv.Error as err:
      sys.exit('Error on file %s, line %d: %s' % (args.inputFile, reader.line_num, e))

# print vddProfileStep
# print tempProfileStep

vddParameters = []
tempParameters = []
vddList = []
tempList = []

vddSteps = []
tempSteps = []
count = 0

lines = len(vddProfileList)

#Splitting as an array
for vdd, temp in map(None, vddProfileList, tempProfileList):
  vddList.append(np.split(vdd,argQuantity/2))
  tempList.append(np.split(temp,argQuantity/2))


countList = len(vddList)

# Taking the parameters one by one
for vddRow, tempRow in map(None, vddList, tempList):
  for row in range(0,countList+1):
    vddParameters.append(int(vddRow[row]))
    tempParameters.append(int(tempRow[row]))

count = 0
size = 0


vddValues = []
tempValues = []


for vdd in vddParameters:
  sizeSum = 0
  if int(vdd) != 0:
    size = int(vdd)
    sizeSum = sizeSum + size
    for i in range(0,size):
      vddValues.append(str(vddProfileStep[count]))
  count = count + 1
  if count == 5:
    count = 0

count = 0
size = 0
for temp in tempParameters:
  if int(temp) != 0:
    size = int(temp)
    for i in range(0,size):
      tempValues.append(str(tempProfileStep[count]))
  count = count + 1
  if count == 5:
    count = 0

steps = len(vddValues)/lines

print vddValues
print tempValues

print len(vddValues)
print len(tempValues)


'''
Agora, percorrer os 400 registros.
A cada 100 registros, uma tabela para o run_aging.py, que ira construir o
profile.cfg
'''



vdd = 1.1
flag = True
numberSteps = steps
initialAge = 24
initialTemp = 27
initialActivity = 80
ageStep = 8760.0/steps
tempStep = 101.0/steps
activityStep = 101.0/steps

table.write('vdd,temp,act,period,age\n')

for step,  vdds, temps in map(None,range(1,numberSteps+1), vddValues, tempValues):
  if flag == True:
    table.write(''+ str(vdd)+','+ str(initialTemp)+ ','+ str(initialActivity)+',40us,' + str(initialAge) +'\n')
    flag = False
    age = initialAge
  else:
    age = age + ageStep
    table.write('' + str(vdds)+','+ str(temps)+ ','+ str(initialActivity)+',40us,' + str("{0:.2f}".format(age)) +'\n')

age = age + ageStep
table.write(''+ str(vdd)+','+ str(initialTemp)+ ','+ str(initialActivity)+',40us,' + + str("{0:.2f}".format(age)) +'\n')


#
#
# print str(tempProfileList) + "\n"
# print vddProfileList
