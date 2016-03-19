#!/usr/bin/python

import argparse
import os
import sys, time
import  csv
import time

tempProfileList = []
vddProfileList = []


initialDate = time.strftime("%a %b %d %H:%M:%S %Z %Y")

print "Start simulation at: " + initialDate



parser = argparse.ArgumentParser()

parser.add_argument("inputFile", help="input file with profiling environment conditions. Must be an CSV formatd file")

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

with open(args.inputFile, 'rb') as csvfile:
  reader = csv.reader(csvfile)
  try:
    for row in reader:
      if reader.line_num == 1 :
        argQuantity = len(row)
      	tempProfileList = row[0:(argQuantity/2)]
        vddProfileList = row[(argQuantity/2) : argQuantity+1]
      	# vdds = row[0]
       #  vddList.append(vdds);
       #  netlists.append(netlist_name);
        # vddAux = (row[0].translate(None, '.'))
        # tempAux = row[1].replace(".", "_")
        # actAux = row[2].replace(".", "_")
        # perAux = row[3]
        # ageAux = row[4].replace(".", "_")
      	# netlistCopy(row[0], row[1], row[2], row[3], row[4], netlist_name)
        
  except csv.Error as err:
      sys.exit('Error on file %s, line %d: %s' % (args.inputFile, reader.line_num, e))

print tempProfileList
print argQuantity
print vddProfileList

# vddAux = vddAux.translate(None, '.')
# tempAux = tempAux.replace("_", ".")
# actAux = actAux.replace("_", ".")
# perAux = perAux
# ageAux = ageAux.replace("_", ".")
# ageFloat = float(ageAux)

# ageFloat = ageFloat + 1.0
# ageAux = str(ageFloat)

# netlistCopy("1.1", "27", actAux, perAux, ageAux, netlist_name)
