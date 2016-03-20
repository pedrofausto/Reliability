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

table.write('vdd,temp,act,period,age\n')
#table.write('1.1,27,20,40us,' + str(initialAge - 1) +'\n')

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

#Splitting as an array
for vdd, temp in map(None, vddProfileList, tempProfileList):
  vddList.append(np.split(vdd,argQuantity/2))
  tempList.append(np.split(temp,argQuantity/2))

count = len(vddList)

# Taking the parameters one by one
for vddRow, tempRow in map(None, vddList, tempList):
  for row in range(0,count+1):
    vddParameters.append(int(vddRow[row]))
    tempParameters.append(int(tempRow[row]))

print vddParameters

# count = len(vddSteps)
for vddRow, tempRow, step in map(None, vddParameters, tempParameters, vddProfileStep):
#   for row in range(0,count+1):
   print step
    # vddSteps.append(int(vddRow[row]))
    # tempSteps.append(int(tempRow[row]))


# for vddParam, step in map(None, vddParameters, vddProfileStep):
#   print vddProfileStep
#   if int(step) != 0:
#     count = int(step)
#     print count
  # for lines in range(0,count):
  #   vddParameters.append(row)
  #   print str(row) + " " + str(vddProfile)



#
#
# vdd = 1.1
# flag = True
# numberSteps = 100
# initialAge = 24
# initialTemp = 20
# initialActivity = 20
# ageStep = 8760.0/numberSteps
# tempStep = 101.0/numberSteps
# activityStep = 101.0/numberSteps
#
# for step in range(1,numberSteps+1):
#   if flag == True:
#     temp = numpy.random.normal(80,10)
#     table.write('1.1,20,20,40us,' + str(initialAge) +'\n')
#     flag = False
#     age = initialAge
#
#   else:
#     age = age + ageStep
#     temp = numpy.random.normal(80,10)
#     tabela4.write('1.1,20,20,40us,' + str("{0:.2f}".format(age)) +'\n')
#
# age = age + ageStep
# tabela4.write('1.1,27,20,40us,' + str("{0:.2f}".format(age)) +'\n')
#
#
#
#
# print str(tempProfileList) + "\n"
# print vddProfileList
