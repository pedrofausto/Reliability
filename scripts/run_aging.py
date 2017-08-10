#!/usr/bin/python

import argparse
import os
import sys
import csv
import time
import pdb

netlists = []
vddList = []
currentDir = os.getcwd()
profileQty = 0

initialDate = time.strftime("%a %b %d %H:%M:%S %Z %Y")

print "Start simulation at: " + initialDate

def netlistCopy(vdd, temp, act, period, age, netlist_name):

  print "Copying default netlist file to " + netlist_name
  bashCommand="cp "+args.netlist+" " + netlist_name
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()


  #print "Changing Vdd for circuit aging simulation"
  bashCommand="sed -i s/dc\=0\.0/dc\="+ vdd +"/g "+ netlist_name
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

  #print "Changing temperature"
  bashCommand="sed -i s/temp\=0/temp="+temp+"/g "+ netlist_name
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

  #print "Changing input signal activity"
  unit = (period.translate(None, '1234567890'))
  percent = (float(act)/100.0)  * float((period.translate(None, 'usnmpf')))
  bashCommand="sed -i s/width\=0us/width\="+ str(percent) + unit +"/g "+ netlist_name
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

  #print "Changing input signal period"
  bashCommand="sed -i s/period\=0us/period\="+ period + "/g "+ netlist_name
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

  #print "Changing aging period"
  bashCommand="sed -i s/age\ 0h/age\ "+ age + "h/g "+ netlist_name
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

animation_strings = ('[=', '=', '=]')
parser = argparse.ArgumentParser()

parser.add_argument("inputFile", help="input file with aging conditions. Must be an CSV formated file")
parser.add_argument("netlist", help="Name of the default netlist file to be aged. Ex: inverter")
parser.add_argument("--directory", "-d", help="Output directory. All results will reside within this directory.")
parser.add_argument("--profileNumber", "-p", help="Profile numbering. The default profile name will be 'profile<profileNumber>'.")


args = parser.parse_args()

bashCommand="clear"
os.system(bashCommand)

print "Evaluating options and values..."

print "\n..."
if args.inputFile == None :
    print "Environmental conditions must be provided. Please provide an input file."
    print "Quiting..."
    quit()
elif args.netlist == None:
    print "Netlist must be provided. Please provide an input file."
    print "Quiting..."
    quit()
elif args.directory != None and args.profileNumber != None:
    print "Output directory defined. Using value " + args.directory
    outputDirectory = args.directory
    print "Profile numbering defined. Using value " + args.profileNumber
    profileNumber = args.profileNumber
    pass
elif args.directory != None and args.profileNumber == None:
    print "Output directory defined. Using value " + args.directory
    outputDirectory = args.directory
    print "Profile numbering not defined. Using default value 'profile.cfg'"
    profileNumber = ''
    pass
elif args.directory == None and args.profileNumber != None:
    print "Output directory not defined. Using default value 'results'"
    outputDirectory = "results"
    print "Profile numbering defined. Using value " + args.profileNumber
    profileNumber = args.profileNumber
    pass
else:
    print "Output directory not defined. Using default value 'results'"
    outputDirectory = "results"
    print "Profile numbering not defined. Using default value 'profile.cfg'"
    profileNumber = ''
    pass


netlist_name = ""
with open(args.inputFile, 'rb') as csvfile:
  reader = csv.reader(csvfile)
  try:
    for row in reader:
      if reader.line_num != 1 :
      	netlist_name = args.netlist + "vdd" + (row[0].translate(None, '.')) + "t" + row[1].replace(".", "_") + "a" + row[2].replace(".", "_") + "p" + row[3] +  "_ag" + row[4].replace(".", "_") + "h"
      	vdds = row[0]
        vddList.append(vdds);
        netlists.append(netlist_name);
      	netlistCopy(row[0], row[1], row[2], row[3], row[4], netlist_name)
  except csv.Error as err:
    print "Error"
    sys.exit('Error on file %s, line %d: %s' % (args.inputFile, reader.line_num, e))

# Routine to create the profile files used by rxprofile
print "Creating default profile file 'profile.cfg'"
profileFile = open('profile'+str(profileNumber)+'.cfg','w')
profileFile.write('.netlist_type spectre\n')

# The below option tries to force the saving of only 3 steps: The first, the last and the step #1 (which doesn't matter)
profileFile.write('.save_tempfile step=1\n')
profileFile.write('.profile_names ')
index = 0
for net in netlists:
  if (index == (len(netlists) - 1)):
    profileFile.write(net + '\n')
  else:
    profileFile.write(net + ' \\ \n')
  index = index +1
profileFile.close()

print "\nRunning rxprofile tool"
bashCommand="rxprofile profile"+str(profileNumber)+".cfg -raw "+ outputDirectory
print bashCommand
result = os.system(bashCommand)
if (result != 0):
 print "Failed to execute rxprofile. Quiting..."
 bashCommand="rm -Rf " + str(args.netlist) + "vdd* " + str(args.directory) + " " + str(profileNumber)+ ".cfg " + str(outputDirectory)
 os.system(bashCommand)
 quit()


print "Creating extraction script file"
extractFile = open('extractDelay.ocn','w')
flag = True
count = 1;
extractFile.write('out_delay=outfile("./delays_' + args.netlist + '_' + args.inputFile + '", "a")\n')
extractFile.write(';Extract script file for ' + netlist_name +'\n')
extractFile.write('fprintf(out_delay "Vdd;Temp;WorstCase\\n")\n')

index = 0
for net in netlists:
  if flag == True:
    firstNetlist = net
    flag = False
  else:
    currentNetlist = net

    if (index == (len(netlists) - 1)):
      #initial value for result manipulation
      extractFile.write('result=0\n')

      #finding the rising and falling delay
      extractFile.write('result1=delay(?wf1 v("out" ?result "tran" ?resultsDir "' + currentDir + '/'+ outputDirectory + '/'+ firstNetlist + '.raw"), ?value1 '+ str(float(vddList[0])/2) +', ?edge1 "rising", ?nth1 1, ?td1 0.0, ?wf2 v("out" ?result "tran" ?resultsDir "' + currentDir + '/'+ outputDirectory + '/'+ currentNetlist + '.raw"), ?value2 '+ str(float(vddList[count])/2) +', ?edge2 "rising", ?nth2 1,  ?td2 0.0 , ?stop nil, ?multiple nil)\n')
      extractFile.write('result2=delay(?wf1 v("out" ?result "tran" ?resultsDir "' + currentDir + '/'+ outputDirectory + '/'+ firstNetlist + '.raw"), ?value1 '+ str(float(vddList[0])/2) +', ?edge1 "falling", ?nth1 1, ?td1 0.0, ?wf2 v("out" ?result "tran" ?resultsDir "' + currentDir + '/'+ outputDirectory + '/'+ currentNetlist + '.raw"), ?value2 '+ str(float(vddList[count])/2) +', ?edge2 "falling", ?nth2 1,  ?td2 0.0 , ?stop nil, ?multiple nil)\n')

      #getting the difference
      #extractFile.write('result1 = if( result1 result1 0)\n')
      #extractFile.write('result2 = if( result2 result2 0)\n')
      extractFile.write('diff = result1 - result2\n')
      # testing to discover the greater of both
      extractFile.write('if((diff > 0) result=result1 result=result2) "npn"\n')

      # Old extraction delay logic
      #extractFile.write('fprintf(out_delay "%.5e\\n" result)\n')

      # Nex extraction delay information: Rising, Falling, Worst Case
      extractFile.write('fprintf(out_delay "%.5e \\n" result)\n')

      #extractFile.write('result2=delay(?wf1 v("out" ?result "tran" ?resultsDir "./' + firstNetlist + '"), ?value1 '+ vddList[0] +', ?edge1 "falling", ?nth1 1, ?td1 0.0, ?wf2 v("out" ?result "tran" ?resultsDir "./' + currentNetlist + '"), ?value2 '+ vddList[count] +', ?edge2 "falling", ?nth2 1,  ?td2 0.0 , ?stop nil, ?multiple nil)\\n\n')
      count = count+1
  index = index + 1
flag = True

extractFile.write('drain(out_delay)\n')
extractFile.write('close(out_delay)\n')
extractFile.write('exit\n')


extractFile.close()

print "Running Ocean extraction script"
bashCommand="ocean < extractDelay.ocn"
result = os.system(bashCommand)
if (result != 0):
 print "Failed to execute ocean script. Quiting..."
 quit()
else:
  bashCommand="rm -Rf " + str(args.netlist) + "vdd* " + str(args.directory)
  os.system(bashCommand)

print "..."

tempList =  []
actList =   []
agingList = []

with open(args.inputFile, 'rb') as csvfile:
  reader = csv.reader(csvfile)
  try:
    for row in reader:
      if reader.line_num != 1 :
        tempList.append(row[1])
        actList.append(row[2])
        agingList.append(row[4])
  except csv.Error as err:
      sys.exit('Error on file %s, line %d: %s' % (args.inputFile, reader.line_num, e))


finalDate = time.strftime("%a %b %d %H:%M:%S %Z %Y")

print "Start simulation time & date: " + initialDate
print "End simulation time & date: " + finalDate
