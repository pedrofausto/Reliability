#!/usr/bin/python


import argparse
import os
import sys, time


def gradAging(oldStep, step, netlist, nextNetlist):
    
    print "Changing aging parameter"
    bashCommand="sed -i s/"+oldStep+"/"+step+"/g "+args.netlist
    print bashCommand
    os.system(bashCommand)
    result = os.system(bashCommand)
    if (result != 0):
       print "Exiting..."
       quit()

    print "\n1. run prebert ... "
    bashCommand="relxpert_pre -sp "+netlist+" "+netlist+".p1 > "+args.netlist+"_vdd"+args.dcvolt+"_temp"+args.tnom+".log"
    print bashCommand
    result = os.system(bashCommand)
    if (result != 0):
       print "Exiting..."
       quit()
    
    print "\n2. run spectre ... "
    bashCommand="spectre "+netlist+".p1 >> "+args.netlist+"_vdd"+args.dcvolt+"_temp"+args.tnom+".log"
    print bashCommand
    result = os.system(bashCommand)
    if (result != 0):
       print "Exiting..."
       quit()
    
    print "\n3. run postbert ... "
    bashCommand="relxpert_post -r "+netlist+".raw/tran.tran "+netlist+".p1"
    print bashCommand
    result = os.system(bashCommand)
    if (result != 0):
        print "Exiting..."
        quit()
    



animation_strings = ('[=', '=', '=]')
parser = argparse.ArgumentParser()

parser.add_argument("netlist", help="Name of the netlist file to be aged. Ex: inverter")
parser.add_argument("dcvolt", help="DC operating voltage (Volts); Ex: 1.2")
parser.add_argument("temp", help="Operation temperature (C). Ex: 25")
parser.add_argument("tnom", help="Nominal temperature (C). Ex: 27. This value will be used to extract the correspondent aging parameters")
parser.add_argument("aging", help="Aging time (weeks. 52 weeks = 1 year). Ex: 52",type=int)
parser.add_argument("--step", "-s", help="Aging time step. The netlist will be aged for each step (in weeks)",type=int)


group = parser.add_mutually_exclusive_group()
group.add_argument("-a", "--age", action="store_true", help="Aging flow. Extract aging values")
group.add_argument("-r", "--run", action="store_true", help="Run a simulation with aged values")

args = parser.parse_args()

bashCommand="clear"
os.system(bashCommand)

print "Evaluating options..."
for i in range(20):
    if (i == 0):
        sys.stdout.write(animation_strings[0])
        sys.stdout.flush()
        time.sleep(0.1)
    elif (i == 19):
        sys.stdout.write(animation_strings[2])
        sys.stdout.flush()
        time.sleep(0.1)
    else:
        sys.stdout.write(animation_strings[1])
        sys.stdout.flush()
        time.sleep(0.1)

print "\n..."
if args.step == 0 :
    print "Aging step value must not be zero"
    print "Quiting..."
    quit()
elif args.step > args.aging:
    print "Aging step value must not be greater than aging value"
    print "Quiting..."
    quit()
elif args.step < 0 and args.step != None:
    print "Aging step value must not negative"
    print "Quiting..."
    print args.step
    quit()
elif  (args.age and (args.step == None)):
    print "Gradual aging set but no aging step defined. Either define aging step or disable gradual aging"
    quit()
elif args.step != None:
    print "Aging step:", args.step
else:
    print "No age step defined"
    pass



print "Evaluating values..."
print "Aging time:",args.aging, "week(s)"
print "Aging netlist:",args.netlist
print "DC operation voltage:",args.dcvolt,"V"
print "Operation temperature:",args.temp
print "Nominal temperature:",args.tnom


print "\nChanging DC Operating voltage"
bashCommand="sed -i s/dc=1.0/dc="+args.dcvolt+"/g "+args.netlist
print bashCommand
os.system(bashCommand)
result = os.system(bashCommand)
if (result != 0):
    print "Exiting..."
    quit()

print "Changing temperature for circuit aging simulation"
bashCommand="sed -i s/temp=0/temp="+args.temp+"/g "+args.netlist
print bashCommand
os.system(bashCommand)
result = os.system(bashCommand)
if (result != 0):
   print "Exiting..."
   quit()

print "Changing nominal temperature for gradual circuit aging parameters extraction"
bashCommand="sed -i s/tnom=27/tnom="+args.tnom+"/g "+args.netlist
print bashCommand
os.system(bashCommand)
result = os.system(bashCommand)
if (result != 0):
   print "Exiting..."
   quit()


if  ((args.age == 0) and (args.run == 0)):
    print "\nBoth 'age' and 'run' options are disabled. Running non-gradual aging"
    print "Changing aging parameter"
    bashCommand="sed -i s/0y/"+str(args.aging)+"/g "+args.netlist
    print bashCommand
    os.system(bashCommand)
    result = os.system(bashCommand)
    if (result != 0):
       print "Exiting..."
       quit()

    print "1. run prebert ... "
    bashCommand="relxpert_pre -sp "+args.netlist+" "+args.netlist+".p1 > "+args.netlist+"_vdd"+args.dcvolt+"_temp"+args.tnom+".log"
    print bashCommand
    result = os.system(bashCommand)
    if (result != 0):
       print "Exiting..."
       quit()

    print "2. run spectre ... "
    bashCommand="spectre "+args.netlist+".p1 >> "+args.netlist+"_vdd"+args.dcvolt+"_temp"+args.tnom+".log"
    print bashCommand
    result = os.system(bashCommand)
    if (result != 0):
       print "Exiting..."
       quit()

    print "3. run postbert ... "
    bashCommand="relxpert_post -r "+args.netlist+".raw/tran.tran "+args.netlist+".p1"
    print bashCommand
    result = os.system(bashCommand)
    if (result != 0):
        print "Exiting..."
        quit()

    print "4. run aging ... "
    bashCommand="relxpert_pre -age -sp "+args.netlist+" "+args.netlist+"Age.p2 >> "+args.netlist+"_vdd"+args.dcvolt+"_temp"+args.tnom+".log"
    print bashCommand
    result = os.system(bashCommand)
    if (result != 0):
        print "Exiting..."
        quit()

    print "Switching nominal temperature (Tnom) to operation temperature (Temp) to perform spectre simulation"
    bashCommand="sed -i s/tnom="+args.tnom+"/tnom="+args.temp+"/g "+args.netlist
    print bashCommand
    result = os.system(bashCommand)
    if (result != 0):
        print "Exiting..."
        quit()



if (args.age):
    print "Running gradual aging. Age step of "+str(args.step)+" week(s)"

    oldStep = "0y"
    netlist = args.netlist
    nextNetlist = args.netlist+"_vdd"+args.dcvolt+"_temp"+args.tnom+"_Age"+str(args.step)
    
    for step in range(args.step, args.aging+args.step, args.step):
        stepString = str(step)+"w"
        gradAging(oldStep, stepString, netlist, nextNetlist)
        #netlist = nextNetlist
        #nextNetlist = args.netlist+"_vdd"+args.dcvolt+"_temp"+args.tnom+"_Age"+str(args.step+step)
        oldStep = stepString





if (args.run):
    print "Running aged simulation for "+str(args.aging)+" week(s)"




print "..."



