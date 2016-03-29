#!/usr/bin/python

import argparse
import os
import sys, time
import  csv
import time

netlists = [];
vddList  = [];
currentDir = os.getcwd()
profileQty = 0

initialDate = time.strftime("%a %b %d %H:%M:%S %Z %Y")

print "Start simulation at: " + initialDate

def netlistCopy(vdd, temp, act, period, age, netlist_name):

  print "\nCopying default netlist file to " + netlist_name
  bashCommand="cp "+args.netlist+" " + netlist_name
  #print bashCommand
  #os.system(bashCommand)
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()


  print "Changing Vdd for circuit aging simulation"
  bashCommand="sed -i s/dc\=0\.0/dc\="+ vdd +"/g "+ netlist_name
  #print bashCommand
  os.system(bashCommand)
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

  print "Changing temperature"
  bashCommand="sed -i s/temp\=0/temp="+temp+"/g "+ netlist_name
  #print bashCommand
  os.system(bashCommand)
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

  print "Changing input signal activity"
  unit = (period.translate(None, '1234567890'))
  percent = (float(act)/100.0)  * float((period.translate(None, 'usnmpf')))
  bashCommand="sed -i s/width\=0us/width\="+ str(percent) + unit +"/g "+ netlist_name
  #print bashCommand
  os.system(bashCommand)
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

  print "Changing input signal period"
  bashCommand="sed -i s/period\=0us/period\="+ period + "/g "+ netlist_name
  #print bashCommand
  os.system(bashCommand)
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

  print "Changing aging period"
  bashCommand="sed -i s/age\ 0h/age\ "+ age + "h/g "+ netlist_name
  #print bashCommand
  os.system(bashCommand)
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

# def extractDelays(netlist_name):

#   print "\nCopying default netlist file to " + netlist_name
#   bashCommand="cp "+args.netlist+" " + netlist_name
#   #print bashCommand
#   os.system(bashCommand)
#   result = os.system(bashCommand)
#   if (result != 0):
#     print "Exiting..."
#     quit()


#   print "Changing Vdd for circuit aging simulation"
#   bashCommand="sed -i s/dc\=0\.0/dc\="+ vdd +"/g "+ netlist_name
#   #print bashCommand
#   os.system(bashCommand)
#   result = os.system(bashCommand)
#   if (result != 0):
#     print "Exiting..."
#     quit()


animation_strings = ('[=', '=', '=]')
parser = argparse.ArgumentParser()

parser.add_argument("inputFile", help="input file with aging conditions. Must be an CSV formatd file")
parser.add_argument("netlist", help="Name of the default netlist file to be aged. Ex: inverter")
parser.add_argument("--directory", "-d", help="Output directory. All results will reside within this directory.")
parser.add_argument("--profileNumber", "-p", help="Profile numbering. The default profile name will be 'profile<profileNumber>'.")


# group = parser.add_mutually_exclusive_group()
# group.add_argument("-a", "--age", action="store_true", help="Aging flow. Extract aging values")
# group.add_argument("-r", "--run", action="store_true", help="Run a simulation with aged values")

args = parser.parse_args()

bashCommand="clear"
os.system(bashCommand)

print "Evaluating options and values..."
# for i in range(5):
#     if (i == 0):
#         sys.stdout.write(animation_strings[0])
#         sys.stdout.flush()
#         time.sleep(0.1)
#     elif (i == 4):
#         sys.stdout.write(animation_strings[2])
#         sys.stdout.flush()
#         time.sleep(0.1)
#     else:
#         sys.stdout.write(animation_strings[1])
#         sys.stdout.flush()
#         time.sleep(0.1)

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


# vddAux = ''
# tempAux= ''
# actAux= ''
# perAux= ''
# ageAux = ''
with open(args.inputFile, 'rb') as csvfile:
  reader = csv.reader(csvfile)
  try:
    for row in reader:
      if reader.line_num != 1 :
      	netlist_name = args.netlist + "vdd" + (row[0].translate(None, '.')) + "t" + row[1].replace(".", "_") + "a" + row[2].replace(".", "_") + "p" + row[3] +  "_ag" + row[4].replace(".", "_") + "h"
      	vdds = row[0]
        vddList.append(vdds);
        netlists.append(netlist_name);
        # vddAux = (row[0].translate(None, '.'))
        # tempAux = row[1].replace(".", "_")
        # actAux = row[2].replace(".", "_")
        # perAux = row[3]
        # ageAux = row[4].replace(".", "_")
      	netlistCopy(row[0], row[1], row[2], row[3], row[4], netlist_name)
  except csv.Error as err:
      sys.exit('Error on file %s, line %d: %s' % (args.inputFile, reader.line_num, e))

# vddAux = vddAux.translate(None, '.')
# tempAux = tempAux.replace("_", ".")
# actAux = actAux.replace("_", ".")
# perAux = perAux
# ageAux = ageAux.replace("_", ".")
# ageFloat = float(ageAux)

# ageFloat = ageFloat + 1.0
# ageAux = str(ageFloat)

# netlistCopy("1.1", "27", actAux, perAux, ageAux, netlist_name)


print "Creating default profile file 'profile.cfg'"
profileFile = open('profile'+str(profileNumber)+'.cfg','w')
profileFile.write('.netlist_type spectre\n')
profileFile.write('.profile_names ')
index = 0
for net in netlists:
  if (index == (len(netlists) - 1)):
    profileFile.write(net + '\n')
  else:
    profileFile.write(net + ' \\ \n')
  index = index +1
#profileFile.write(args.netlist + 'vdd' + '11' + 't27a' + str(actAux) + 'p' + str(perAux) +  '_ag' + str(ageAux) + 'h')
profileFile.close()

print "\nRunning rxprofile tool"
bashCommand="rxprofile profile"+str(profileNumber)+".cfg -raw "+ outputDirectory
print bashCommand
result = os.system(bashCommand)
if (result != 0):
 print "Failed to execute rxprofile. Quiting..."
 quit()


print "Creating extraction script file"
extractFile = open('extractDelay.ocn','w')
flag = True
count = 1;
extractFile.write('out_delay=outfile("./delays_' + args.netlist + '_' + args.inputFile +'", "a")\n')
extractFile.write(';Extract script file for ' + netlist_name +'\n')
extractFile.write('fprintf(out_delay "Extract results file for ' + args.netlist +'\\n")\n')
for net in netlists:
  if flag == True:
    firstNetlist = net
    flag = False
  else:
    currentNetlist = net

    #initial value for result manipulation
    extractFile.write('result=0\n')

    #finding the rising and falling delay
    extractFile.write('result1=delay(?wf1 v("Y" ?result "tran" ?resultsDir "' + currentDir + '/'+ outputDirectory + '/'+ firstNetlist + '.raw"), ?value1 '+ str(float(vddList[0])/2) +', ?edge1 "rising", ?nth1 1, ?td1 0.0, ?wf2 v("Y" ?result "tran" ?resultsDir "' + currentDir + '/'+ outputDirectory + '/'+ currentNetlist + '.raw"), ?value2 '+ str(float(vddList[count])/2) +', ?edge2 "rising", ?nth2 1,  ?td2 0.0 , ?stop nil, ?multiple nil)\n')
    extractFile.write('result2=delay(?wf1 v("Y" ?result "tran" ?resultsDir "' + currentDir + '/'+ outputDirectory + '/'+ firstNetlist + '.raw"), ?value1 '+ str(float(vddList[0])/2) +', ?edge1 "falling", ?nth1 1, ?td1 0.0, ?wf2 v("Y" ?result "tran" ?resultsDir "' + currentDir + '/'+ outputDirectory + '/'+ currentNetlist + '.raw"), ?value2 '+ str(float(vddList[count])/2) +', ?edge2 "falling", ?nth2 1,  ?td2 0.0 , ?stop nil, ?multiple nil)\n')

    #getting the difference
    extractFile.write('diff = result1 - result2\n')
    # testing to discover the smaller of both
    extractFile.write('if((diff < 0) result=result1 result=result2) "npn"\n')

    extractFile.write('fprintf(out_delay "%.5e\\n" result)\n')

    #extractFile.write('result2=delay(?wf1 v("Y" ?result "tran" ?resultsDir "./' + firstNetlist + '"), ?value1 '+ vddList[0] +', ?edge1 "falling", ?nth1 1, ?td1 0.0, ?wf2 v("Y" ?result "tran" ?resultsDir "./' + currentNetlist + '"), ?value2 '+ vddList[count] +', ?edge2 "falling", ?nth2 1,  ?td2 0.0 , ?stop nil, ?multiple nil)\\n\n')
    count = count+1
flag = True


extractFile.write('drain(out_delay)\n')
extractFile.write('close(out_delay)\n')

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

'''
Avoiding create another delay table.
'''


# delaysList = []
# delayExtract = []
#
# #with open('./delays_inv100.csv') as f:
# file = './delays_' + args.netlist + '_' + args.inputFile +''
# with open(file, 'rb') as f:
#   delayExtract = f.readlines()
#   for delay in range(len(delayExtract)):
#     if delay != 0 :
#       delaysList.append(delayExtract)
#
#
# delayFile = open('delayTable_' + str(args.netlist) + '_' + str(args.inputFile) +'' ,'w')

# count = 0
# for vdd, temp, act, aging, delay in map(None, vddList, tempList, actList, agingList, delaysList):
#   if (count >= 1):
#     delayFile.write('' + str(vdd) + ';' + str(temp) + ';' + str(act) + ';' + str(aging) +  ';' + str(delay[count-1]) )
#   count = count + 1

finalDate = time.strftime("%a %b %d %H:%M:%S %Z %Y")

print "Start simulation time & date: " + initialDate
print "End simulation time & date: " + finalDate

bashCommand = "echo Start simulation time & date: " + initialDate
os.system(bashCommand)
bashCommand = "echo End simulation time & date: " + finalDate
os.system(bashCommand)
