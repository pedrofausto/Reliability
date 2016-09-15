#!/usr/bin/python

import argparse
import os
import sys, time
import  csv
import numpy
import random





for j in range(0,100):
	
	tempList = []
	vddList = []
	sum = 0;
	sumInt = 0;

	for i in range(0,4):
	  #tempList.append(random.randint(0, 101))
	  tempList.append(int(random.normalvariate(2,1)))
	  sum = sum + tempList[i];
	tempList.append((10 - sum))

	# for i in range(0,5):
	#   tempList[i] = int((float(tempList[i]) / (sum)) * 100.0)
	#   sumInt = sumInt + tempList[i]
	#
	# if (sumInt != 100):
	#   tempList[4] = tempList[4] + (100 - sumInt)

	print str(tempList)