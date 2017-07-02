#!/usr/bin/python

import argparse
import os
import sys
import csv
import time
import numpy as np
import commands
import pdb

tempProfileStep = []
vddProfileStep = []

initialDate = time.strftime("%a %b %d %H:%M:%S %Z %Y")

print "Start simulation at: " + initialDate

parser = argparse.ArgumentParser()

parser.add_argument("inputFile", help="input file with profiling environment conditions. Must be a CSV formatd file. Ex.: table_random_points.csv")
parser.add_argument("outputFile", help="Provide the base name used to create the output files. Table file as a CSV formated file. Ex.: tableGateXPTO")
parser.add_argument("outputDir", help="Provide the base name used to create the output directory. Ex.: resultsGateXPTO")
parser.add_argument("netlist", help="Provide the netlist to be analyzed. Ex.: inv100")


args = parser.parse_args()

bashCommand = "clear"
os.system(bashCommand)

print "Evaluating options and values..."

print "\n..."
if args.inputFile == None :
    print "Environmental conditions must be provided. Please provide an input file."
    print "Quiting..."
    quit()
elif args.outputFile == None :
    print "Environmental conditions CSV file must be provided."
    print "Quiting..."
    quit()

with open(args.inputFile, 'rb') as csvfile:
  reader = csv.reader(csvfile)
  data = list(reader)
  lineQuant = len(data)

  profileHeader = ''

with open(args.inputFile, 'rb') as csvfile:
  reader = csv.reader(csvfile)
  try:
    for row in reader:
      if reader.line_num == 1 :
        argQuantity = len(row)
        profileHeader = row
      	tempProfileStep = row[0:(argQuantity/2)]
        vddProfileStep = row[(argQuantity/2) : argQuantity+1]
        tempProfileList = np.zeros((lineQuant-1, argQuantity/2))
        vddProfileList = np.zeros((lineQuant-1, argQuantity/2))
      else:
        tempProfileList [(reader.line_num)-2][0:(argQuantity/2)]  = row[0:(argQuantity/2)]
        vddProfileList [(reader.line_num)-2][0:(argQuantity/2)]  = row[(argQuantity/2) : argQuantity+1]
  except csv.Error as err:
      sys.exit('Error on file %s, line %d: %s' % (args.inputFile, reader.line_num, e))



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

countList = argQuantity/2

# Taking the parameters one by one
for vddRow, tempRow in map(None, vddList, tempList):
  for row in range(0,countList):
    vddParameters.append(int(vddRow[row]))
    tempParameters.append(int(tempRow[row]))

count = 0
size = 0

# print vddParameters
# print tempParameters


vddValues = []
tempValues = []
conj = 3


#print "vdd " + str(len(vddParameters))
for vdd in vddParameters:
  #if int(vdd) != 0:
  size = int(vdd)
  for i in range(0,size):
    vddValues.append(vddProfileStep[count])
  count = count + 1
  if count == conj:
    count = 0

# print vddProfileStep

count = 0
size = 0

#print "vdd " + str(len(tempParameters))
for temp in tempParameters:
  #if int(temp) != 0:
  size = int(temp)
  for j in range(0,size):
    tempValues.append(tempProfileStep[count])
  count = count + 1
  if count == conj:
    count = 0

# print tempProfileStep
#
# print len(vddValues)
# print len(tempValues)

steps = len(vddValues)/lines

#print steps

'''
Agora, percorrer os N registros.
A cada 100 registros, uma tabela para o run_aging.py, que ira construir o
profile.cfg
'''

vdd = 1.1
flag = True
numberEntries = steps
initialAge = 24
initialTemp = 27
initialActivity = 80
ageStep = 8760.0/steps
tempStep = 101.0/steps
activityStep = 101.0/steps



files = 1
bashCommandList = []
stepNumber = 1

for vdds, temps in map(None, vddValues, tempValues):
  if flag == True:
      if numberEntries == 1:
          table = open(args.outputFile+ "_" + str(files)+'.csv','w')
          table.write('vdd,temp,act,period,age\n')
          table.write(''+ str(vdd)+','+ str(initialTemp)+ ','+ str(initialActivity)+',40us,' + str(initialAge) +'\n')
          stepNumber = stepNumber + 1
          age = initialAge + ageStep
          table.write('' + str(vdds)+','+ str(temps)+ ','+ str(initialActivity)+',40us,' + str("{0:.2f}".format(age)) +'\n')
          age = age + initialAge
          table.write('' + str(vdd) + ',' + str(initialTemp) + ',' + str(initialActivity) + ',40us,' + str("{0:.2f}".format(age)) + '\n')
          table.close()
          bashCommandList.append("./run_aging.py -d " + str(args.outputDir) + str(files) + " " + str(args.outputFile + "_" + str(files) + '.csv') + " " + str(args.netlist) + " -p " + str(files))
          stepNumber = 1
          flag = True
          files = files + 1
      else:
          table = open(args.outputFile + "_" + str(files) + '.csv', 'w')
          table.write('vdd,temp,act,period,age\n')
          table.write('' + str(vdd) + ',' + str(initialTemp) + ',' + str(initialActivity) + ',40us,' + str(initialAge) + '\n')
          flag = False
          stepNumber = stepNumber + 1
          age = initialAge + ageStep
  else:
    table.write('' + str(vdds)+','+ str(temps)+ ','+ str(initialActivity)+',40us,' + str("{0:.2f}".format(age)) +'\n')
    if stepNumber == numberEntries:
        age = age + ageStep
        table.write('' + str(vdds) + ',' + str(temps) + ',' + str(initialActivity) + ',40us,' + str("{0:.2f}".format(age)) + '\n')
        age = age + initialAge
        table.write('' + str(vdd) + ',' + str(initialTemp) + ',' + str(initialActivity) + ',40us,' + str("{0:.2f}".format(age)) + '\n')
        table.close()
        bashCommandList.append("./run_aging.py -d " + str(args.outputDir) + str(files) + " " + str(args.outputFile + "_" + str(files) + '.csv') + " " + str(args.netlist) + " -p " + str(files))
        stepNumber = 1
        flag = True
        files = files + 1
    else:
        age = age + ageStep
        stepNumber = stepNumber + 1

for command in bashCommandList:
  print command
  result = os.system(command)

'''
Creating output table
'''
resultList = []
tableFile = open(args.outputFile+'_delays.csv','w')
for delayNumber in range(1,lineQuant):
  command = "tail -n 1 delays_" + args.netlist + "_" + args.outputFile + "_" + str(delayNumber) + ".csv"
  resultList.append(commands.getoutput(command))

tableFile.write(''.join((str(profileHeader).translate(None,"[']")).split()).replace(",",";") + ';WorstCase\n')
for index in range(0,lineQuant-1):
  tableFile.write(''.join((str(tempProfileList[index]).translate(None,"[]") + str(vddProfileList[index]).translate(None,"[]")).split()).replace(".",";") +str(resultList[index])+'\n')

tableFile.close()

finalDate = time.strftime("%a %b %d %H:%M:%S %Z %Y")

print "Started profiles simulation at: " + initialDate
print "Ended profiles simulation at: " + finalDate
