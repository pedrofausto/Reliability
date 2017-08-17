#!/usr/bin/python

import re
import argparse
import os
import time

initialDate = time.strftime("%a %b %d %H:%M:%S %Z %Y")

print "Start parsing at: " + initialDate

def verilogChange(library, constraints, top, nworst, fileVerilog):

    bashCommand = "cp run_ets_template.tcl run_ets.tcl"
    result = os.system(bashCommand)
    if (result != 0):
        print "Exiting..."
        quit()

    bashCommand="sed -i s/LIBRARY/"+str(library)+"/g run_ets.tcl"
    result = os.system(bashCommand)
    if (result != 0):
        print "Exiting..."
        quit()

    bashCommand = "sed -i s/FILE/" + str(fileVerilog) + "/g run_ets.tcl"
    result = os.system(bashCommand)
    if (result != 0):
        print "Exiting..."
        quit()

    bashCommand = "sed -i s/TOP/" + str(top) + "/g run_ets.tcl"
    result = os.system(bashCommand)
    if (result != 0):
        print "Exiting..."
        quit()

    bashCommand = "sed -i s/CONSTRAINT/" + str(constraints) + "/g run_ets.tcl"
    result = os.system(bashCommand)
    if (result != 0):
        print "Exiting..."
        quit()

    bashCommand = "sed -i s/NUMBER/" + str(nworst) + "/g run_ets.tcl"
    result = os.system(bashCommand)
    if (result != 0):
        print "Exiting..."
        quit()


parser = argparse.ArgumentParser()

parser.add_argument("libraryFile", help="Full path to the library file to be used by the Tempus. Ex.: ./PwcV162T125_STD_CELL_7RF.lib")
parser.add_argument("--topModule", "-t", help="Provide the name of the top module")
parser.add_argument("constraintsFile", help="Full path to the constraint file to be used by the Tempus. Ex.: ./c880_constraints_example.sdc")
parser.add_argument("verilogFile", help="Provide the verilog file to be analyzed. Ex.: c880_netlist_example.v")
parser.add_argument("nWorst", help="Set the number of worst paths to be analyzed.")


args = parser.parse_args()

print "\n..."
if args.libraryFile == None :
    print "Library must be provided"
    print "Quiting..."
    quit()
if args.constraintsFile == None :
    print "Timing constraints conditions file must be provided."
    print "Quiting..."
    quit()
if args.topModule == None :
    print "Top module not provided. Using the verilog file as base name."
    topMod = args.verilogFile.replace(".v", "")
elif args.topModule != None :
    topMod = args.topModule
if args.nWorst == None :
    print "Number of worst paths not provided. Setting 1 worst path as default."
    n_Worst = 1
elif args.nWorst != None :
    n_Worst = int(args.nWorst)
if args.verilogFile == None :
    print "Verilog file must be provided."
    print "Quiting..."
    quit()

verilogChange(args.libraryFile,args.constraintsFile,topMod, n_Worst, args.verilogFile)

bashCommand="tempus -files run_ets.tcl -no_gui"
result = os.system(bashCommand)
if (result != 0):
    print "Error executing OS command. Exiting..."
    quit()

#with open("./tempus_pathsim/path_1_setup.sp", "r") as criticalFile:
#    netlistString = criticalFile.read()

#print netlistString

#resultado = re.findall("\*Stage Instances", netlistString)

#if (resultado != None):
#    print resultado

print "Netlist generated and stored at ./tempus_pathsim"
