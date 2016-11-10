#!/usr/bin/python

import time
import numpy
import random
import os


# for j in range(0,30):

# 	tempList = []
# 	vddList = []
# 	sum = 0;
# 	sumInt = 0;

# 	for i in range(0,4):
# 	  #tempList.append(random.randint(0, 101))
# 	  tempList.append(int(random.normalvariate(2,1)))
# 	  sum = sum + tempList[i];
# 	tempList.append((10 - sum))

# 	# for i in range(0,5):
# 	#   tempList[i] = int((float(tempList[i]) / (sum)) * 100.0)
# 	#   sumInt = sumInt + tempList[i]
# 	#
# 	# if (sumInt != 100):
# 	#   tempList[4] = tempList[4] + (100 - sumInt)

# 	print str(tempList)


def netlistCopy(vdd, temp, act, period, age, netlist_name):

  print "Copying default netlist file to " + netlist_name
  bashCommand="cp "+"inv"+" " + netlist_name
  #print bashCommand
  #os.system(bashCommand)
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()


  #print "Changing Vdd for circuit aging simulation"
  bashCommand="sed -i s/dc\=0\.0/dc\="+ str(vdd) +"/g "+ netlist_name
  #print bashCommand
  os.system(bashCommand)
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

  #print "Changing temperature"
  bashCommand="sed -i s/temp\=0/temp="+str(temp)+"/g "+ netlist_name
  #print bashCommand
  os.system(bashCommand)
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

  #print "Changing input signal activity"
  unit = (period.translate(None, '1234567890'))
  percent = (float(act)/100.0)  * float((period.translate(None, 'usnmpf')))
  bashCommand="sed -i s/width\=0us/width\="+ str(percent) + str(unit) +"/g "+ netlist_name
  #print bashCommand
  os.system(bashCommand)
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

  #print "Changing input signal period"
  bashCommand="sed -i s/period\=0us/period\="+ str(period) + "/g "+ netlist_name
  #print bashCommand
  os.system(bashCommand)
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

  #print "Changing aging period"
  bashCommand="sed -i s/age\ 0h/age\ "+ str(age) + "h/g "+ netlist_name
  #print bashCommand
  os.system(bashCommand)
  result = os.system(bashCommand)
  if (result != 0):
    print "Exiting..."
    quit()

netlists =[]

age=24.0
totalAge=8760.0
totalSteps=100.0
ageStep=totalAge

randTemp=1
ageFlag = False



for j in range(0,400):
  randVdd=round(random.uniform(0.9,1.3),1)
  #randTemp=int(random.uniform(1,99))
  randTemp=int(random.gauss(80,10))
  if (ageFlag == False):
    netlist = "invvdd11t27a80p40us_ag24h"
    ageFlag = True
    netlistCopy(1.1,27,"80","40",age,netlist)
    netlists.append(netlist)
    age = totalAge

  else:
    netlist = "invvdd" + str(randVdd).replace(".","") + "t" + str(randTemp) + "a80p40us_ag"+ str(age).replace(".","_") + "h"
    netlistCopy(randVdd,randTemp,"80","40",age,netlist)
    age = age + 24.0
    netlists.append(netlist)

    netlist = "invvdd11t27a80p40us_ag"+ str(age).replace(".","_") + "h"
    netlistCopy(1.1,27,"80","40",age,netlist)
    age = 24.0
    netlists.append(netlist)
    ageFlag = False



profileFlag = 0
index = 0
for net in netlists:
  if profileFlag == 0:
    print "Creating default profile file 'profile.cfg'"
    profileFile = open('profile' + str(index) + '.cfg','w')
    profileFile.write('.netlist_type spectre\n')
    profileFile.write('.profile_names ')
    profileFile.write(net + ' \\ \n')
    profileFlag = profileFlag + 1
  elif profileFlag == 1:
    profileFile.write(net + ' \\ \n')
    profileFlag = profileFlag + 1
  else:
    profileFile.write(net + '\n')
    profileFlag = 0
    profileFile.close()
    index = index + 1


for j in range(0,200):
  bashCommand="rxprofile profile"+ str(j)  + ".cfg -raw resultados" + str(j)
  print bashCommand
  result = os.system(bashCommand)
  if (result != 0):
    print "Failed to execute rxprofile. Quiting..."
    quit()



# print "\nRunning rxprofile tool"
# bashCommand="rxprofile profile.cfg -raw 'resultados'"
# print bashCommand
# result = os.system(bashCommand)
# if (result != 0):
#  print "Failed to execute rxprofile. Quiting..."
#  quit()

currentDir = os.getcwd()

print "Creating extraction script file"
extractFile = open('extractDelay.ocn','w')
flag = 0
count = 1;
extractFile.write('out_delay=outfile("./delays_inv", "a")\n')
extractFile.write('fprintf(out_delay "Extract results file for inv\\n")\n')
count = 0
for net in netlists:
  if flag == 0:
    firstNetlist = net
    flag = flag + 1
  elif flag == 1:
    flag = flag + 1
    agedNetlist = net
  else:
    currentNetlist = net

    #initial value for result manipulation
    extractFile.write('result=0\n')

    #finding the rising and falling delay
    extractFile.write('result1=delay(?wf1 v("Y" ?result "tran" ?resultsDir "' + currentDir + '/'+ 'resultados' + str(count) +'/'+ firstNetlist + '.raw"), ?value1 0.75, ?edge1 "rising", ?nth1 1, ?td1 0.0, ?wf2 v("Y" ?result "tran" ?resultsDir "' + currentDir + '/'+ 'resultados' + str(count) + '/'+ currentNetlist + '.raw"), ?value2 0.75, ?edge2 "rising", ?nth2 1,  ?td2 0.0 , ?stop nil, ?multiple nil)\n')
    extractFile.write('result2=delay(?wf1 v("Y" ?result "tran" ?resultsDir "' + currentDir + '/'+ 'resultados' + str(count) +'/'+ firstNetlist + '.raw"), ?value1 0.75, ?edge1 "falling", ?nth1 1, ?td1 0.0, ?wf2 v("Y" ?result "tran" ?resultsDir "' + currentDir + '/'+ 'resultados' + str(count) + '/'+ currentNetlist + '.raw"), ?value2 0.75, ?edge2 "falling", ?nth2 1,  ?td2 0.0 , ?stop nil, ?multiple nil)\n')

    #getting the difference
    extractFile.write('diff = result1 - result2\n')
    # testing to discover the smaller of both
    extractFile.write('if((diff < 0) result=result1 result=result2) "npn"\n')

    #extractFile.write('fprintf(out_delay "' + agedNetlist +' %.5e\\n" result)\n')
    extractFile.write('fprintf(out_delay "' + agedNetlist +' %.5e' + ';%.5e \\n" result1 result2 )\n')
    #extractFile.write('result2=delay(?wf1 v("Y" ?result "tran" ?resultsDir "./' + firstNetlist + '"), ?value1 '+ vddList[0] +', ?edge1 "falling", ?nth1 1, ?td1 0.0, ?wf2 v("Y" ?result "tran" ?resultsDir "./' + currentNetlist + '"), ?value2 '+ vddList[count] +', ?edge2 "falling", ?nth2 1,  ?td2 0.0 , ?stop nil, ?multiple nil)\\n\n')
    count = count+1
    flag = 0

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
  bashCommand="rm -Rf invvdd* resultados*"
  #os.system(bashCommand)

print "..."
