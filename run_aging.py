#!/usr/bin/python


import argparse
import os
import sys, time
import  csv

netlists = [];
vddList  = [];

def netlistCopy(vdd, temp, act, period, age, netlist_name):
    
  print "\nCopying default netlist file to " + netlist_name
  bashCommand="cp "+args.netlist+" " + netlist_name
  #print bashCommand
  os.system(bashCommand)
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

def extractDelays(netlist_name):
    
  print "\nCopying default netlist file to " + netlist_name
  bashCommand="cp "+args.netlist+" " + netlist_name
  #print bashCommand
  os.system(bashCommand)
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
  

animation_strings = ('[=', '=', '=]')
parser = argparse.ArgumentParser()

parser.add_argument("inputFile", help="input file with aging conditions. Must be an CSV formatd file")
parser.add_argument("netlist", help="Name of the default netlist file to be aged. Ex: inverter")
parser.add_argument("--directory", "-d", help="Output directory. All results will reside within this directory.")


# group = parser.add_mutually_exclusive_group()
# group.add_argument("-a", "--age", action="store_true", help="Aging flow. Extract aging values")
# group.add_argument("-r", "--run", action="store_true", help="Run a simulation with aged values")

args = parser.parse_args()

bashCommand="clear"
os.system(bashCommand)

print "Evaluating options and values..."
for i in range(5):
    if (i == 0):
        sys.stdout.write(animation_strings[0])
        sys.stdout.flush()
        time.sleep(0.1)
    elif (i == 4):
        sys.stdout.write(animation_strings[2])
        sys.stdout.flush()
        time.sleep(0.1)
    else:
        sys.stdout.write(animation_strings[1])
        sys.stdout.flush()
        time.sleep(0.1)

print "\n..."
if args.inputFile == None :
    print "Environmental conditions must be provided. Please provide an input file."
    print "Quiting..."
    quit()
elif args.netlist == None:
    print "Netlist must be provided. Please provide an input file."
    print "Quiting..."
    quit()
elif args.directory != None:
    print "Output directory defined. Using value " + args.directory
    outputDirectory = args.directory
    pass
else:
    print "Output directory not defined. Using default value 'results'"
    outputDirectory = "results"
    pass
  
  
with open(args.inputFile, 'rb') as csvfile:
  reader = csv.reader(csvfile)
  try:
    for row in reader:
      if reader.line_num != 1 :
      	#print row
      	netlist_name = args.netlist + "_vdd" + (row[0].translate(None, '.')) + "_temp" + row[1] + "_act" + row[2] + "_period" + row[3] +  "_age" + row[4] + "h"
      	vdds = row[0]
        vddList.append(vdds);
        netlists.append(netlist_name);
      	netlistCopy(row[0], row[1], row[2], row[3], row[4], netlist_name)
  except csv.Error as err:
      sys.exit('Error on file %s, line %d: %s' % (args.inputFile, reader.line_num, e))

print "Creating default profile file 'profile.cfg'"
profileFile = open('profile.cfg','w')
profileFile.write('.netlist_type spectre\n')
profileFile.write('.profile_names ' + ' '.join(netlists) + '\n')
profileFile.close() 

print "\nRunning rxprofile tool"
bashCommand="rxprofile profile.cfg -raw "+ outputDirectory
print bashCommand
#result = os.system(bashCommand)
#if (result != 0):
#  print "Failed to execute rxprofile. Quiting..."
#  quit()


print "Creating extraction script file "
extractFile = open('extractDelay.ocn','w')
flag = True
count = 1;
for net in netlists:
  if flag == True:
    firstNetlist = net
    flag = False
    extractFile.write(';Extract script file for ' + netlist_name +'\n')
    extractFile.write('out_delay=outfile("./delays_inv.csv", "a")\n')
    extractFile.write('fprintf(out_delay "Extract results file for ' + netlist_name +'\\n")\n')
  else:
    currentNetlist = net
    
    #initial value for result manipulation
    extractFile.write('result=0\n')
    
    #finding the rising and falling delay
    extractFile.write('result1=delay(?wf1 v("Y" ?result "tran" ?resultsDir "./' + firstNetlist + '"), ?value1 '+ vddList[0] +', ?edge1 "rising", ?nth1 1, ?td1 0.0, ?wf2 v("Y" ?result "tran" ?resultsDir "./' + currentNetlist + '"), ?value2 '+ vddList[count] +', ?edge2 "rising", ?nth2 1,  ?td2 0.0 , ?stop nil, ?multiple nil)\\n\n')
    extractFile.write('result2=delay(?wf1 v("Y" ?result "tran" ?resultsDir "./' + firstNetlist + '"), ?value1 '+ vddList[0] +', ?edge1 "falling", ?nth1 1, ?td1 0.0, ?wf2 v("Y" ?result "tran" ?resultsDir "./' + currentNetlist + '"), ?value2 '+ vddList[count] +', ?edge2 "falling", ?nth2 1,  ?td2 0.0 , ?stop nil, ?multiple nil)\\n\n')
    
    #getting the difference
    extractFile.write('diff = result1 - result2\n')
    # testing to discover the smaller of both
    extractFile.write('if((diff < 0) result=diff result=result2) "npn"\n')

    extractFile.write('fprintf(out_delay "\\n\%.e5\\n" result)')


    #extractFile.write('result2=delay(?wf1 v("Y" ?result "tran" ?resultsDir "./' + firstNetlist + '"), ?value1 '+ vddList[0] +', ?edge1 "falling", ?nth1 1, ?td1 0.0, ?wf2 v("Y" ?result "tran" ?resultsDir "./' + currentNetlist + '"), ?value2 '+ vddList[count] +', ?edge2 "falling", ?nth2 1,  ?td2 0.0 , ?stop nil, ?multiple nil)\\n\n')
    count = count+1
    

extractFile.write('drain(out_delay)\n')
extractFile.write('close(out_delay)\n')      

extractFile.close() 


print "..."



