#!/bin/csh -f
# please set path to RelXpert installation.
# eg. setenv RELXPERTHOME /tools/RelXpert_10.1
# eg. set path=( $RELXPERTHOME/tools.lnx86/bin $path )
#
# you may run RelXpert using single steps as below (prebert, postert, prebert2) 
# or with 'RUN_RELXPERT' run script.

echo "RelXpert batch for all gates ..."

echo "Inverter..."
./run_aging.csh and2 1.2 1.0 0 27 1d
./run_aging.csh and2 1.2 1.0 0 27 1y
./run_aging.csh and2 1.2 1.0 0 27 3y
./run_aging.csh and2 1.2 1.0 0 27 5y
./run_aging.csh and2 1.2 1.0 0 27 7y
./run_aging.csh and2 1.2 1.0 0 27 10y

./run_aging.csh and2 1.2 1.0 25 27 1d
./run_aging.csh and2 1.2 1.0 25 27 1y
./run_aging.csh and2 1.2 1.0 25 27 3y
./run_aging.csh and2 1.2 1.0 25 27 5y
./run_aging.csh and2 1.2 1.0 25 27 7y
./run_aging.csh and2 1.2 1.0 25 27 10y

./run_aging.csh and2 1.2 1.0 50 27 1d
./run_aging.csh and2 1.2 1.0 50 27 1y
./run_aging.csh and2 1.2 1.0 50 27 3y
./run_aging.csh and2 1.2 1.0 50 27 5y
./run_aging.csh and2 1.2 1.0 50 27 7y
./run_aging.csh and2 1.2 1.0 50 27 10y

./run_aging.csh and2 1.2 1.0 75 27 1d
./run_aging.csh and2 1.2 1.0 75 27 1y
./run_aging.csh and2 1.2 1.0 75 27 3y
./run_aging.csh and2 1.2 1.0 75 27 5y
./run_aging.csh and2 1.2 1.0 75 27 7y
./run_aging.csh and2 1.2 1.0 75 27 10y

./run_aging.csh and2 1.2 1.0 100 27 1d
./run_aging.csh and2 1.2 1.0 100 27 1y
./run_aging.csh and2 1.2 1.0 100 27 3y
./run_aging.csh and2 1.2 1.0 100 27 5y
./run_aging.csh and2 1.2 1.0 100 27 7y
./run_aging.csh and2 1.2 1.0 100 27 10y

./run_aging.csh and2 1.2 1.0 125 27 1d
./run_aging.csh and2 1.2 1.0 125 27 1y
./run_aging.csh and2 1.2 1.0 125 27 3y
./run_aging.csh and2 1.2 1.0 125 27 5y
./run_aging.csh and2 1.2 1.0 125 27 7y
./run_aging.csh and2 1.2 1.0 125 27 10y

./run_aging.csh and2 1.2 1.1 0 27 1d
./run_aging.csh and2 1.2 1.1 0 27 1y
./run_aging.csh and2 1.2 1.1 0 27 3y
./run_aging.csh and2 1.2 1.1 0 27 5y
./run_aging.csh and2 1.2 1.1 0 27 7y
./run_aging.csh and2 1.2 1.1 0 27 10y

./run_aging.csh and2 1.2 1.1 25 27 1d
./run_aging.csh and2 1.2 1.1 25 27 1y
./run_aging.csh and2 1.2 1.1 25 27 3y
./run_aging.csh and2 1.2 1.1 25 27 5y
./run_aging.csh and2 1.2 1.1 25 27 7y
./run_aging.csh and2 1.2 1.1 25 27 10y

./run_aging.csh and2 1.2 1.1 50 27 1d
./run_aging.csh and2 1.2 1.1 50 27 1y
./run_aging.csh and2 1.2 1.1 50 27 3y
./run_aging.csh and2 1.2 1.1 50 27 5y
./run_aging.csh and2 1.2 1.1 50 27 7y
./run_aging.csh and2 1.2 1.1 50 27 10y

./run_aging.csh and2 1.2 1.1 75 27 1d
./run_aging.csh and2 1.2 1.1 75 27 1y
./run_aging.csh and2 1.2 1.1 75 27 3y
./run_aging.csh and2 1.2 1.1 75 27 5y
./run_aging.csh and2 1.2 1.1 75 27 7y
./run_aging.csh and2 1.2 1.1 75 27 10y

./run_aging.csh and2 1.2 1.1 100 27 1d
./run_aging.csh and2 1.2 1.1 100 27 1y
./run_aging.csh and2 1.2 1.1 100 27 3y
./run_aging.csh and2 1.2 1.1 100 27 5y
./run_aging.csh and2 1.2 1.1 100 27 7y
./run_aging.csh and2 1.2 1.1 100 27 10y

./run_aging.csh and2 1.2 1.1 125 27 1d
./run_aging.csh and2 1.2 1.1 125 27 1y
./run_aging.csh and2 1.2 1.1 125 27 3y
./run_aging.csh and2 1.2 1.1 125 27 5y
./run_aging.csh and2 1.2 1.1 125 27 7y
./run_aging.csh and2 1.2 1.1 125 27 10y

./run_aging.csh and2 1.2 1.2 0 27 1d
./run_aging.csh and2 1.2 1.2 0 27 1y
./run_aging.csh and2 1.2 1.2 0 27 3y
./run_aging.csh and2 1.2 1.2 0 27 5y
./run_aging.csh and2 1.2 1.2 0 27 7y
./run_aging.csh and2 1.2 1.2 0 27 10y

./run_aging.csh and2 1.2 1.2 25 27 1d
./run_aging.csh and2 1.2 1.2 25 27 1y
./run_aging.csh and2 1.2 1.2 25 27 3y
./run_aging.csh and2 1.2 1.2 25 27 5y
./run_aging.csh and2 1.2 1.2 25 27 7y
./run_aging.csh and2 1.2 1.2 25 27 10y

./run_aging.csh and2 1.2 1.2 50 27 1d
./run_aging.csh and2 1.2 1.2 50 27 1y
./run_aging.csh and2 1.2 1.2 50 27 3y
./run_aging.csh and2 1.2 1.2 50 27 5y
./run_aging.csh and2 1.2 1.2 50 27 7y
./run_aging.csh and2 1.2 1.2 50 27 10y

./run_aging.csh and2 1.2 1.2 75 27 1d
./run_aging.csh and2 1.2 1.2 75 27 1y
./run_aging.csh and2 1.2 1.2 75 27 3y
./run_aging.csh and2 1.2 1.2 75 27 5y
./run_aging.csh and2 1.2 1.2 75 27 7y
./run_aging.csh and2 1.2 1.2 75 27 10y

./run_aging.csh and2 1.2 1.2 100 27 1d
./run_aging.csh and2 1.2 1.2 100 27 1y
./run_aging.csh and2 1.2 1.2 100 27 3y
./run_aging.csh and2 1.2 1.2 100 27 5y
./run_aging.csh and2 1.2 1.2 100 27 7y
./run_aging.csh and2 1.2 1.2 100 27 10y

./run_aging.csh and2 1.2 1.2 125 27 1d
./run_aging.csh and2 1.2 1.2 125 27 1y
./run_aging.csh and2 1.2 1.2 125 27 3y
./run_aging.csh and2 1.2 1.2 125 27 5y
./run_aging.csh and2 1.2 1.2 125 27 7y
./run_aging.csh and2 1.2 1.2 125 27 10y

./run_aging.csh and2 1.2 1.3 0 27 1d
./run_aging.csh and2 1.2 1.3 0 27 1y
./run_aging.csh and2 1.2 1.3 0 27 3y
./run_aging.csh and2 1.2 1.3 0 27 5y
./run_aging.csh and2 1.2 1.3 0 27 7y
./run_aging.csh and2 1.2 1.3 0 27 10y

./run_aging.csh and2 1.2 1.3 25 27 1d
./run_aging.csh and2 1.2 1.3 25 27 1y
./run_aging.csh and2 1.2 1.3 25 27 3y
./run_aging.csh and2 1.2 1.3 25 27 5y
./run_aging.csh and2 1.2 1.3 25 27 7y
./run_aging.csh and2 1.2 1.3 25 27 10y

./run_aging.csh and2 1.2 1.3 50 27 1d
./run_aging.csh and2 1.2 1.3 50 27 1y
./run_aging.csh and2 1.2 1.3 50 27 3y
./run_aging.csh and2 1.2 1.3 50 27 5y
./run_aging.csh and2 1.2 1.3 50 27 7y
./run_aging.csh and2 1.2 1.3 50 27 10y

./run_aging.csh and2 1.2 1.3 75 27 1d
./run_aging.csh and2 1.2 1.3 75 27 1y
./run_aging.csh and2 1.2 1.3 75 27 3y
./run_aging.csh and2 1.2 1.3 75 27 5y
./run_aging.csh and2 1.2 1.3 75 27 7y
./run_aging.csh and2 1.2 1.3 75 27 10y

./run_aging.csh and2 1.2 1.3 100 27 1d
./run_aging.csh and2 1.2 1.3 100 27 1y
./run_aging.csh and2 1.2 1.3 100 27 3y
./run_aging.csh and2 1.2 1.3 100 27 5y
./run_aging.csh and2 1.2 1.3 100 27 7y
./run_aging.csh and2 1.2 1.3 100 27 10y

./run_aging.csh and2 1.2 1.3 125 27 1d
./run_aging.csh and2 1.2 1.3 125 27 1y
./run_aging.csh and2 1.2 1.3 125 27 3y
./run_aging.csh and2 1.2 1.3 125 27 5y
./run_aging.csh and2 1.2 1.3 125 27 7y
./run_aging.csh and2 1.2 1.3 125 27 10y

./run_aging.csh and2 1.2 1.4 0 27 1d
./run_aging.csh and2 1.2 1.4 0 27 1y
./run_aging.csh and2 1.2 1.4 0 27 3y
./run_aging.csh and2 1.2 1.4 0 27 5y
./run_aging.csh and2 1.2 1.4 0 27 7y
./run_aging.csh and2 1.2 1.4 0 27 10y

./run_aging.csh and2 1.2 1.4 25 27 1d
./run_aging.csh and2 1.2 1.4 25 27 1y
./run_aging.csh and2 1.2 1.4 25 27 3y
./run_aging.csh and2 1.2 1.4 25 27 5y
./run_aging.csh and2 1.2 1.4 25 27 7y
./run_aging.csh and2 1.2 1.4 25 27 10y

./run_aging.csh and2 1.2 1.4 50 27 1d
./run_aging.csh and2 1.2 1.4 50 27 1y
./run_aging.csh and2 1.2 1.4 50 27 3y
./run_aging.csh and2 1.2 1.4 50 27 5y
./run_aging.csh and2 1.2 1.4 50 27 7y
./run_aging.csh and2 1.2 1.4 50 27 10y

./run_aging.csh and2 1.2 1.4 75 27 1d
./run_aging.csh and2 1.2 1.4 75 27 1y
./run_aging.csh and2 1.2 1.4 75 27 3y
./run_aging.csh and2 1.2 1.4 75 27 5y
./run_aging.csh and2 1.2 1.4 75 27 7y
./run_aging.csh and2 1.2 1.4 75 27 10y

./run_aging.csh and2 1.2 1.4 100 27 1d
./run_aging.csh and2 1.2 1.4 100 27 1y
./run_aging.csh and2 1.2 1.4 100 27 3y
./run_aging.csh and2 1.2 1.4 100 27 5y
./run_aging.csh and2 1.2 1.4 100 27 7y
./run_aging.csh and2 1.2 1.4 100 27 10y

./run_aging.csh and2 1.2 1.4 125 27 1d
./run_aging.csh and2 1.2 1.4 125 27 1y
./run_aging.csh and2 1.2 1.4 125 27 3y
./run_aging.csh and2 1.2 1.4 125 27 5y
./run_aging.csh and2 1.2 1.4 125 27 7y
./run_aging.csh and2 1.2 1.4 125 27 10y


echo "NAND2..."
./run_aging.csh or2 1.2 1.0 0 27 1d
./run_aging.csh or2 1.2 1.0 0 27 1y
./run_aging.csh or2 1.2 1.0 0 27 3y
./run_aging.csh or2 1.2 1.0 0 27 5y
./run_aging.csh or2 1.2 1.0 0 27 7y
./run_aging.csh or2 1.2 1.0 0 27 10y

./run_aging.csh or2 1.2 1.0 25 27 1d
./run_aging.csh or2 1.2 1.0 25 27 1y
./run_aging.csh or2 1.2 1.0 25 27 3y
./run_aging.csh or2 1.2 1.0 25 27 5y
./run_aging.csh or2 1.2 1.0 25 27 7y
./run_aging.csh or2 1.2 1.0 25 27 10y

./run_aging.csh or2 1.2 1.0 50 27 1d
./run_aging.csh or2 1.2 1.0 50 27 1y
./run_aging.csh or2 1.2 1.0 50 27 3y
./run_aging.csh or2 1.2 1.0 50 27 5y
./run_aging.csh or2 1.2 1.0 50 27 7y
./run_aging.csh or2 1.2 1.0 50 27 10y

./run_aging.csh or2 1.2 1.0 75 27 1d
./run_aging.csh or2 1.2 1.0 75 27 1y
./run_aging.csh or2 1.2 1.0 75 27 3y
./run_aging.csh or2 1.2 1.0 75 27 5y
./run_aging.csh or2 1.2 1.0 75 27 7y
./run_aging.csh or2 1.2 1.0 75 27 10y

./run_aging.csh or2 1.2 1.0 100 27 1d
./run_aging.csh or2 1.2 1.0 100 27 1y
./run_aging.csh or2 1.2 1.0 100 27 3y
./run_aging.csh or2 1.2 1.0 100 27 5y
./run_aging.csh or2 1.2 1.0 100 27 7y
./run_aging.csh or2 1.2 1.0 100 27 10y

./run_aging.csh or2 1.2 1.0 125 27 1d
./run_aging.csh or2 1.2 1.0 125 27 1y
./run_aging.csh or2 1.2 1.0 125 27 3y
./run_aging.csh or2 1.2 1.0 125 27 5y
./run_aging.csh or2 1.2 1.0 125 27 7y
./run_aging.csh or2 1.2 1.0 125 27 10y

./run_aging.csh or2 1.2 1.1 0 27 1d
./run_aging.csh or2 1.2 1.1 0 27 1y
./run_aging.csh or2 1.2 1.1 0 27 3y
./run_aging.csh or2 1.2 1.1 0 27 5y
./run_aging.csh or2 1.2 1.1 0 27 7y
./run_aging.csh or2 1.2 1.1 0 27 10y

./run_aging.csh or2 1.2 1.1 25 27 1d
./run_aging.csh or2 1.2 1.1 25 27 1y
./run_aging.csh or2 1.2 1.1 25 27 3y
./run_aging.csh or2 1.2 1.1 25 27 5y
./run_aging.csh or2 1.2 1.1 25 27 7y
./run_aging.csh or2 1.2 1.1 25 27 10y

./run_aging.csh or2 1.2 1.1 50 27 1d
./run_aging.csh or2 1.2 1.1 50 27 1y
./run_aging.csh or2 1.2 1.1 50 27 3y
./run_aging.csh or2 1.2 1.1 50 27 5y
./run_aging.csh or2 1.2 1.1 50 27 7y
./run_aging.csh or2 1.2 1.1 50 27 10y

./run_aging.csh or2 1.2 1.1 75 27 1d
./run_aging.csh or2 1.2 1.1 75 27 1y
./run_aging.csh or2 1.2 1.1 75 27 3y
./run_aging.csh or2 1.2 1.1 75 27 5y
./run_aging.csh or2 1.2 1.1 75 27 7y
./run_aging.csh or2 1.2 1.1 75 27 10y

./run_aging.csh or2 1.2 1.1 100 27 1d
./run_aging.csh or2 1.2 1.1 100 27 1y
./run_aging.csh or2 1.2 1.1 100 27 3y
./run_aging.csh or2 1.2 1.1 100 27 5y
./run_aging.csh or2 1.2 1.1 100 27 7y
./run_aging.csh or2 1.2 1.1 100 27 10y

./run_aging.csh or2 1.2 1.1 125 27 1d
./run_aging.csh or2 1.2 1.1 125 27 1y
./run_aging.csh or2 1.2 1.1 125 27 3y
./run_aging.csh or2 1.2 1.1 125 27 5y
./run_aging.csh or2 1.2 1.1 125 27 7y
./run_aging.csh or2 1.2 1.1 125 27 10y

./run_aging.csh or2 1.2 1.2 0 27 1d
./run_aging.csh or2 1.2 1.2 0 27 1y
./run_aging.csh or2 1.2 1.2 0 27 3y
./run_aging.csh or2 1.2 1.2 0 27 5y
./run_aging.csh or2 1.2 1.2 0 27 7y
./run_aging.csh or2 1.2 1.2 0 27 10y

./run_aging.csh or2 1.2 1.2 25 27 1d
./run_aging.csh or2 1.2 1.2 25 27 1y
./run_aging.csh or2 1.2 1.2 25 27 3y
./run_aging.csh or2 1.2 1.2 25 27 5y
./run_aging.csh or2 1.2 1.2 25 27 7y
./run_aging.csh or2 1.2 1.2 25 27 10y

./run_aging.csh or2 1.2 1.2 50 27 1d
./run_aging.csh or2 1.2 1.2 50 27 1y
./run_aging.csh or2 1.2 1.2 50 27 3y
./run_aging.csh or2 1.2 1.2 50 27 5y
./run_aging.csh or2 1.2 1.2 50 27 7y
./run_aging.csh or2 1.2 1.2 50 27 10y

./run_aging.csh or2 1.2 1.2 75 27 1d
./run_aging.csh or2 1.2 1.2 75 27 1y
./run_aging.csh or2 1.2 1.2 75 27 3y
./run_aging.csh or2 1.2 1.2 75 27 5y
./run_aging.csh or2 1.2 1.2 75 27 7y
./run_aging.csh or2 1.2 1.2 75 27 10y

./run_aging.csh or2 1.2 1.2 100 27 1d
./run_aging.csh or2 1.2 1.2 100 27 1y
./run_aging.csh or2 1.2 1.2 100 27 3y
./run_aging.csh or2 1.2 1.2 100 27 5y
./run_aging.csh or2 1.2 1.2 100 27 7y
./run_aging.csh or2 1.2 1.2 100 27 10y

./run_aging.csh or2 1.2 1.2 125 27 1d
./run_aging.csh or2 1.2 1.2 125 27 1y
./run_aging.csh or2 1.2 1.2 125 27 3y
./run_aging.csh or2 1.2 1.2 125 27 5y
./run_aging.csh or2 1.2 1.2 125 27 7y
./run_aging.csh or2 1.2 1.2 125 27 10y

./run_aging.csh or2 1.2 1.3 0 27 1d
./run_aging.csh or2 1.2 1.3 0 27 1y
./run_aging.csh or2 1.2 1.3 0 27 3y
./run_aging.csh or2 1.2 1.3 0 27 5y
./run_aging.csh or2 1.2 1.3 0 27 7y
./run_aging.csh or2 1.2 1.3 0 27 10y

./run_aging.csh or2 1.2 1.3 25 27 1d
./run_aging.csh or2 1.2 1.3 25 27 1y
./run_aging.csh or2 1.2 1.3 25 27 3y
./run_aging.csh or2 1.2 1.3 25 27 5y
./run_aging.csh or2 1.2 1.3 25 27 7y
./run_aging.csh or2 1.2 1.3 25 27 10y

./run_aging.csh or2 1.2 1.3 50 27 1d
./run_aging.csh or2 1.2 1.3 50 27 1y
./run_aging.csh or2 1.2 1.3 50 27 3y
./run_aging.csh or2 1.2 1.3 50 27 5y
./run_aging.csh or2 1.2 1.3 50 27 7y
./run_aging.csh or2 1.2 1.3 50 27 10y

./run_aging.csh or2 1.2 1.3 75 27 1d
./run_aging.csh or2 1.2 1.3 75 27 1y
./run_aging.csh or2 1.2 1.3 75 27 3y
./run_aging.csh or2 1.2 1.3 75 27 5y
./run_aging.csh or2 1.2 1.3 75 27 7y
./run_aging.csh or2 1.2 1.3 75 27 10y

./run_aging.csh or2 1.2 1.3 100 27 1d
./run_aging.csh or2 1.2 1.3 100 27 1y
./run_aging.csh or2 1.2 1.3 100 27 3y
./run_aging.csh or2 1.2 1.3 100 27 5y
./run_aging.csh or2 1.2 1.3 100 27 7y
./run_aging.csh or2 1.2 1.3 100 27 10y

./run_aging.csh or2 1.2 1.3 125 27 1d
./run_aging.csh or2 1.2 1.3 125 27 1y
./run_aging.csh or2 1.2 1.3 125 27 3y
./run_aging.csh or2 1.2 1.3 125 27 5y
./run_aging.csh or2 1.2 1.3 125 27 7y
./run_aging.csh or2 1.2 1.3 125 27 10y

./run_aging.csh or2 1.2 1.4 0 27 1d
./run_aging.csh or2 1.2 1.4 0 27 1y
./run_aging.csh or2 1.2 1.4 0 27 3y
./run_aging.csh or2 1.2 1.4 0 27 5y
./run_aging.csh or2 1.2 1.4 0 27 7y
./run_aging.csh or2 1.2 1.4 0 27 10y

./run_aging.csh or2 1.2 1.4 25 27 1d
./run_aging.csh or2 1.2 1.4 25 27 1y
./run_aging.csh or2 1.2 1.4 25 27 3y
./run_aging.csh or2 1.2 1.4 25 27 5y
./run_aging.csh or2 1.2 1.4 25 27 7y
./run_aging.csh or2 1.2 1.4 25 27 10y

./run_aging.csh or2 1.2 1.4 50 27 1d
./run_aging.csh or2 1.2 1.4 50 27 1y
./run_aging.csh or2 1.2 1.4 50 27 3y
./run_aging.csh or2 1.2 1.4 50 27 5y
./run_aging.csh or2 1.2 1.4 50 27 7y
./run_aging.csh or2 1.2 1.4 50 27 10y

./run_aging.csh or2 1.2 1.4 75 27 1d
./run_aging.csh or2 1.2 1.4 75 27 1y
./run_aging.csh or2 1.2 1.4 75 27 3y
./run_aging.csh or2 1.2 1.4 75 27 5y
./run_aging.csh or2 1.2 1.4 75 27 7y
./run_aging.csh or2 1.2 1.4 75 27 10y

./run_aging.csh or2 1.2 1.4 100 27 1d
./run_aging.csh or2 1.2 1.4 100 27 1y
./run_aging.csh or2 1.2 1.4 100 27 3y
./run_aging.csh or2 1.2 1.4 100 27 5y
./run_aging.csh or2 1.2 1.4 100 27 7y
./run_aging.csh or2 1.2 1.4 100 27 10y

./run_aging.csh or2 1.2 1.4 125 27 1d
./run_aging.csh or2 1.2 1.4 125 27 1y
./run_aging.csh or2 1.2 1.4 125 27 3y
./run_aging.csh or2 1.2 1.4 125 27 5y
./run_aging.csh or2 1.2 1.4 125 27 7y
./run_aging.csh or2 1.2 1.4 125 27 10y


echo "..."
./run_aging.csh nand3 1.2 1.0 0 27 1d
./run_aging.csh nand3 1.2 1.0 0 27 1y
./run_aging.csh nand3 1.2 1.0 0 27 3y
./run_aging.csh nand3 1.2 1.0 0 27 5y
./run_aging.csh nand3 1.2 1.0 0 27 7y
./run_aging.csh nand3 1.2 1.0 0 27 10y

./run_aging.csh nand3 1.2 1.0 25 27 1d
./run_aging.csh nand3 1.2 1.0 25 27 1y
./run_aging.csh nand3 1.2 1.0 25 27 3y
./run_aging.csh nand3 1.2 1.0 25 27 5y
./run_aging.csh nand3 1.2 1.0 25 27 7y
./run_aging.csh nand3 1.2 1.0 25 27 10y

./run_aging.csh nand3 1.2 1.0 50 27 1d
./run_aging.csh nand3 1.2 1.0 50 27 1y
./run_aging.csh nand3 1.2 1.0 50 27 3y
./run_aging.csh nand3 1.2 1.0 50 27 5y
./run_aging.csh nand3 1.2 1.0 50 27 7y
./run_aging.csh nand3 1.2 1.0 50 27 10y

./run_aging.csh nand3 1.2 1.0 75 27 1d
./run_aging.csh nand3 1.2 1.0 75 27 1y
./run_aging.csh nand3 1.2 1.0 75 27 3y
./run_aging.csh nand3 1.2 1.0 75 27 5y
./run_aging.csh nand3 1.2 1.0 75 27 7y
./run_aging.csh nand3 1.2 1.0 75 27 10y

./run_aging.csh nand3 1.2 1.0 100 27 1d
./run_aging.csh nand3 1.2 1.0 100 27 1y
./run_aging.csh nand3 1.2 1.0 100 27 3y
./run_aging.csh nand3 1.2 1.0 100 27 5y
./run_aging.csh nand3 1.2 1.0 100 27 7y
./run_aging.csh nand3 1.2 1.0 100 27 10y

./run_aging.csh nand3 1.2 1.0 125 27 1d
./run_aging.csh nand3 1.2 1.0 125 27 1y
./run_aging.csh nand3 1.2 1.0 125 27 3y
./run_aging.csh nand3 1.2 1.0 125 27 5y
./run_aging.csh nand3 1.2 1.0 125 27 7y
./run_aging.csh nand3 1.2 1.0 125 27 10y

./run_aging.csh nand3 1.2 1.1 0 27 1d
./run_aging.csh nand3 1.2 1.1 0 27 1y
./run_aging.csh nand3 1.2 1.1 0 27 3y
./run_aging.csh nand3 1.2 1.1 0 27 5y
./run_aging.csh nand3 1.2 1.1 0 27 7y
./run_aging.csh nand3 1.2 1.1 0 27 10y

./run_aging.csh nand3 1.2 1.1 25 27 1d
./run_aging.csh nand3 1.2 1.1 25 27 1y
./run_aging.csh nand3 1.2 1.1 25 27 3y
./run_aging.csh nand3 1.2 1.1 25 27 5y
./run_aging.csh nand3 1.2 1.1 25 27 7y
./run_aging.csh nand3 1.2 1.1 25 27 10y

./run_aging.csh nand3 1.2 1.1 50 27 1d
./run_aging.csh nand3 1.2 1.1 50 27 1y
./run_aging.csh nand3 1.2 1.1 50 27 3y
./run_aging.csh nand3 1.2 1.1 50 27 5y
./run_aging.csh nand3 1.2 1.1 50 27 7y
./run_aging.csh nand3 1.2 1.1 50 27 10y

./run_aging.csh nand3 1.2 1.1 75 27 1d
./run_aging.csh nand3 1.2 1.1 75 27 1y
./run_aging.csh nand3 1.2 1.1 75 27 3y
./run_aging.csh nand3 1.2 1.1 75 27 5y
./run_aging.csh nand3 1.2 1.1 75 27 7y
./run_aging.csh nand3 1.2 1.1 75 27 10y

./run_aging.csh nand3 1.2 1.1 100 27 1d
./run_aging.csh nand3 1.2 1.1 100 27 1y
./run_aging.csh nand3 1.2 1.1 100 27 3y
./run_aging.csh nand3 1.2 1.1 100 27 5y
./run_aging.csh nand3 1.2 1.1 100 27 7y
./run_aging.csh nand3 1.2 1.1 100 27 10y

./run_aging.csh nand3 1.2 1.1 125 27 1d
./run_aging.csh nand3 1.2 1.1 125 27 1y
./run_aging.csh nand3 1.2 1.1 125 27 3y
./run_aging.csh nand3 1.2 1.1 125 27 5y
./run_aging.csh nand3 1.2 1.1 125 27 7y
./run_aging.csh nand3 1.2 1.1 125 27 10y

./run_aging.csh nand3 1.2 1.2 0 27 1d
./run_aging.csh nand3 1.2 1.2 0 27 1y
./run_aging.csh nand3 1.2 1.2 0 27 3y
./run_aging.csh nand3 1.2 1.2 0 27 5y
./run_aging.csh nand3 1.2 1.2 0 27 7y
./run_aging.csh nand3 1.2 1.2 0 27 10y

./run_aging.csh nand3 1.2 1.2 25 27 1d
./run_aging.csh nand3 1.2 1.2 25 27 1y
./run_aging.csh nand3 1.2 1.2 25 27 3y
./run_aging.csh nand3 1.2 1.2 25 27 5y
./run_aging.csh nand3 1.2 1.2 25 27 7y
./run_aging.csh nand3 1.2 1.2 25 27 10y

./run_aging.csh nand3 1.2 1.2 50 27 1d
./run_aging.csh nand3 1.2 1.2 50 27 1y
./run_aging.csh nand3 1.2 1.2 50 27 3y
./run_aging.csh nand3 1.2 1.2 50 27 5y
./run_aging.csh nand3 1.2 1.2 50 27 7y
./run_aging.csh nand3 1.2 1.2 50 27 10y

./run_aging.csh nand3 1.2 1.2 75 27 1d
./run_aging.csh nand3 1.2 1.2 75 27 1y
./run_aging.csh nand3 1.2 1.2 75 27 3y
./run_aging.csh nand3 1.2 1.2 75 27 5y
./run_aging.csh nand3 1.2 1.2 75 27 7y
./run_aging.csh nand3 1.2 1.2 75 27 10y

./run_aging.csh nand3 1.2 1.2 100 27 1d
./run_aging.csh nand3 1.2 1.2 100 27 1y
./run_aging.csh nand3 1.2 1.2 100 27 3y
./run_aging.csh nand3 1.2 1.2 100 27 5y
./run_aging.csh nand3 1.2 1.2 100 27 7y
./run_aging.csh nand3 1.2 1.2 100 27 10y

./run_aging.csh nand3 1.2 1.2 125 27 1d
./run_aging.csh nand3 1.2 1.2 125 27 1y
./run_aging.csh nand3 1.2 1.2 125 27 3y
./run_aging.csh nand3 1.2 1.2 125 27 5y
./run_aging.csh nand3 1.2 1.2 125 27 7y
./run_aging.csh nand3 1.2 1.2 125 27 10y

./run_aging.csh nand3 1.2 1.3 0 27 1d
./run_aging.csh nand3 1.2 1.3 0 27 1y
./run_aging.csh nand3 1.2 1.3 0 27 3y
./run_aging.csh nand3 1.2 1.3 0 27 5y
./run_aging.csh nand3 1.2 1.3 0 27 7y
./run_aging.csh nand3 1.2 1.3 0 27 10y

./run_aging.csh nand3 1.2 1.3 25 27 1d
./run_aging.csh nand3 1.2 1.3 25 27 1y
./run_aging.csh nand3 1.2 1.3 25 27 3y
./run_aging.csh nand3 1.2 1.3 25 27 5y
./run_aging.csh nand3 1.2 1.3 25 27 7y
./run_aging.csh nand3 1.2 1.3 25 27 10y

./run_aging.csh nand3 1.2 1.3 50 27 1d
./run_aging.csh nand3 1.2 1.3 50 27 1y
./run_aging.csh nand3 1.2 1.3 50 27 3y
./run_aging.csh nand3 1.2 1.3 50 27 5y
./run_aging.csh nand3 1.2 1.3 50 27 7y
./run_aging.csh nand3 1.2 1.3 50 27 10y

./run_aging.csh nand3 1.2 1.3 75 27 1d
./run_aging.csh nand3 1.2 1.3 75 27 1y
./run_aging.csh nand3 1.2 1.3 75 27 3y
./run_aging.csh nand3 1.2 1.3 75 27 5y
./run_aging.csh nand3 1.2 1.3 75 27 7y
./run_aging.csh nand3 1.2 1.3 75 27 10y

./run_aging.csh nand3 1.2 1.3 100 27 1d
./run_aging.csh nand3 1.2 1.3 100 27 1y
./run_aging.csh nand3 1.2 1.3 100 27 3y
./run_aging.csh nand3 1.2 1.3 100 27 5y
./run_aging.csh nand3 1.2 1.3 100 27 7y
./run_aging.csh nand3 1.2 1.3 100 27 10y

./run_aging.csh nand3 1.2 1.3 125 27 1d
./run_aging.csh nand3 1.2 1.3 125 27 1y
./run_aging.csh nand3 1.2 1.3 125 27 3y
./run_aging.csh nand3 1.2 1.3 125 27 5y
./run_aging.csh nand3 1.2 1.3 125 27 7y
./run_aging.csh nand3 1.2 1.3 125 27 10y

./run_aging.csh nand3 1.2 1.4 0 27 1d
./run_aging.csh nand3 1.2 1.4 0 27 1y
./run_aging.csh nand3 1.2 1.4 0 27 3y
./run_aging.csh nand3 1.2 1.4 0 27 5y
./run_aging.csh nand3 1.2 1.4 0 27 7y
./run_aging.csh nand3 1.2 1.4 0 27 10y

./run_aging.csh nand3 1.2 1.4 25 27 1d
./run_aging.csh nand3 1.2 1.4 25 27 1y
./run_aging.csh nand3 1.2 1.4 25 27 3y
./run_aging.csh nand3 1.2 1.4 25 27 5y
./run_aging.csh nand3 1.2 1.4 25 27 7y
./run_aging.csh nand3 1.2 1.4 25 27 10y

./run_aging.csh nand3 1.2 1.4 50 27 1d
./run_aging.csh nand3 1.2 1.4 50 27 1y
./run_aging.csh nand3 1.2 1.4 50 27 3y
./run_aging.csh nand3 1.2 1.4 50 27 5y
./run_aging.csh nand3 1.2 1.4 50 27 7y
./run_aging.csh nand3 1.2 1.4 50 27 10y

./run_aging.csh nand3 1.2 1.4 75 27 1d
./run_aging.csh nand3 1.2 1.4 75 27 1y
./run_aging.csh nand3 1.2 1.4 75 27 3y
./run_aging.csh nand3 1.2 1.4 75 27 5y
./run_aging.csh nand3 1.2 1.4 75 27 7y
./run_aging.csh nand3 1.2 1.4 75 27 10y

./run_aging.csh nand3 1.2 1.4 100 27 1d
./run_aging.csh nand3 1.2 1.4 100 27 1y
./run_aging.csh nand3 1.2 1.4 100 27 3y
./run_aging.csh nand3 1.2 1.4 100 27 5y
./run_aging.csh nand3 1.2 1.4 100 27 7y
./run_aging.csh nand3 1.2 1.4 100 27 10y

./run_aging.csh nand3 1.2 1.4 125 27 1d
./run_aging.csh nand3 1.2 1.4 125 27 1y
./run_aging.csh nand3 1.2 1.4 125 27 3y
./run_aging.csh nand3 1.2 1.4 125 27 5y
./run_aging.csh nand3 1.2 1.4 125 27 7y
./run_aging.csh nand3 1.2 1.4 125 27 10y

./run_aging.csh nor3 1.2 1.0 0 27 1d
./run_aging.csh nor3 1.2 1.0 0 27 1y
./run_aging.csh nor3 1.2 1.0 0 27 3y
./run_aging.csh nor3 1.2 1.0 0 27 5y
./run_aging.csh nor3 1.2 1.0 0 27 7y
./run_aging.csh nor3 1.2 1.0 0 27 10y

./run_aging.csh nor3 1.2 1.0 25 27 1d
./run_aging.csh nor3 1.2 1.0 25 27 1y
./run_aging.csh nor3 1.2 1.0 25 27 3y
./run_aging.csh nor3 1.2 1.0 25 27 5y
./run_aging.csh nor3 1.2 1.0 25 27 7y
./run_aging.csh nor3 1.2 1.0 25 27 10y

./run_aging.csh nor3 1.2 1.0 50 27 1d
./run_aging.csh nor3 1.2 1.0 50 27 1y
./run_aging.csh nor3 1.2 1.0 50 27 3y
./run_aging.csh nor3 1.2 1.0 50 27 5y
./run_aging.csh nor3 1.2 1.0 50 27 7y
./run_aging.csh nor3 1.2 1.0 50 27 10y

./run_aging.csh nor3 1.2 1.0 75 27 1d
./run_aging.csh nor3 1.2 1.0 75 27 1y
./run_aging.csh nor3 1.2 1.0 75 27 3y
./run_aging.csh nor3 1.2 1.0 75 27 5y
./run_aging.csh nor3 1.2 1.0 75 27 7y
./run_aging.csh nor3 1.2 1.0 75 27 10y

./run_aging.csh nor3 1.2 1.0 100 27 1d
./run_aging.csh nor3 1.2 1.0 100 27 1y
./run_aging.csh nor3 1.2 1.0 100 27 3y
./run_aging.csh nor3 1.2 1.0 100 27 5y
./run_aging.csh nor3 1.2 1.0 100 27 7y
./run_aging.csh nor3 1.2 1.0 100 27 10y

./run_aging.csh nor3 1.2 1.0 125 27 1d
./run_aging.csh nor3 1.2 1.0 125 27 1y
./run_aging.csh nor3 1.2 1.0 125 27 3y
./run_aging.csh nor3 1.2 1.0 125 27 5y
./run_aging.csh nor3 1.2 1.0 125 27 7y
./run_aging.csh nor3 1.2 1.0 125 27 10y

./run_aging.csh nor3 1.2 1.1 0 27 1d
./run_aging.csh nor3 1.2 1.1 0 27 1y
./run_aging.csh nor3 1.2 1.1 0 27 3y
./run_aging.csh nor3 1.2 1.1 0 27 5y
./run_aging.csh nor3 1.2 1.1 0 27 7y
./run_aging.csh nor3 1.2 1.1 0 27 10y

./run_aging.csh nor3 1.2 1.1 25 27 1d
./run_aging.csh nor3 1.2 1.1 25 27 1y
./run_aging.csh nor3 1.2 1.1 25 27 3y
./run_aging.csh nor3 1.2 1.1 25 27 5y
./run_aging.csh nor3 1.2 1.1 25 27 7y
./run_aging.csh nor3 1.2 1.1 25 27 10y

./run_aging.csh nor3 1.2 1.1 50 27 1d
./run_aging.csh nor3 1.2 1.1 50 27 1y
./run_aging.csh nor3 1.2 1.1 50 27 3y
./run_aging.csh nor3 1.2 1.1 50 27 5y
./run_aging.csh nor3 1.2 1.1 50 27 7y
./run_aging.csh nor3 1.2 1.1 50 27 10y

./run_aging.csh nor3 1.2 1.1 75 27 1d
./run_aging.csh nor3 1.2 1.1 75 27 1y
./run_aging.csh nor3 1.2 1.1 75 27 3y
./run_aging.csh nor3 1.2 1.1 75 27 5y
./run_aging.csh nor3 1.2 1.1 75 27 7y
./run_aging.csh nor3 1.2 1.1 75 27 10y

./run_aging.csh nor3 1.2 1.1 100 27 1d
./run_aging.csh nor3 1.2 1.1 100 27 1y
./run_aging.csh nor3 1.2 1.1 100 27 3y
./run_aging.csh nor3 1.2 1.1 100 27 5y
./run_aging.csh nor3 1.2 1.1 100 27 7y
./run_aging.csh nor3 1.2 1.1 100 27 10y

./run_aging.csh nor3 1.2 1.1 125 27 1d
./run_aging.csh nor3 1.2 1.1 125 27 1y
./run_aging.csh nor3 1.2 1.1 125 27 3y
./run_aging.csh nor3 1.2 1.1 125 27 5y
./run_aging.csh nor3 1.2 1.1 125 27 7y
./run_aging.csh nor3 1.2 1.1 125 27 10y

./run_aging.csh nor3 1.2 1.2 0 27 1d
./run_aging.csh nor3 1.2 1.2 0 27 1y
./run_aging.csh nor3 1.2 1.2 0 27 3y
./run_aging.csh nor3 1.2 1.2 0 27 5y
./run_aging.csh nor3 1.2 1.2 0 27 7y
./run_aging.csh nor3 1.2 1.2 0 27 10y

./run_aging.csh nor3 1.2 1.2 25 27 1d
./run_aging.csh nor3 1.2 1.2 25 27 1y
./run_aging.csh nor3 1.2 1.2 25 27 3y
./run_aging.csh nor3 1.2 1.2 25 27 5y
./run_aging.csh nor3 1.2 1.2 25 27 7y
./run_aging.csh nor3 1.2 1.2 25 27 10y

./run_aging.csh nor3 1.2 1.2 50 27 1d
./run_aging.csh nor3 1.2 1.2 50 27 1y
./run_aging.csh nor3 1.2 1.2 50 27 3y
./run_aging.csh nor3 1.2 1.2 50 27 5y
./run_aging.csh nor3 1.2 1.2 50 27 7y
./run_aging.csh nor3 1.2 1.2 50 27 10y

./run_aging.csh nor3 1.2 1.2 75 27 1d
./run_aging.csh nor3 1.2 1.2 75 27 1y
./run_aging.csh nor3 1.2 1.2 75 27 3y
./run_aging.csh nor3 1.2 1.2 75 27 5y
./run_aging.csh nor3 1.2 1.2 75 27 7y
./run_aging.csh nor3 1.2 1.2 75 27 10y

./run_aging.csh nor3 1.2 1.2 100 27 1d
./run_aging.csh nor3 1.2 1.2 100 27 1y
./run_aging.csh nor3 1.2 1.2 100 27 3y
./run_aging.csh nor3 1.2 1.2 100 27 5y
./run_aging.csh nor3 1.2 1.2 100 27 7y
./run_aging.csh nor3 1.2 1.2 100 27 10y

./run_aging.csh nor3 1.2 1.2 125 27 1d
./run_aging.csh nor3 1.2 1.2 125 27 1y
./run_aging.csh nor3 1.2 1.2 125 27 3y
./run_aging.csh nor3 1.2 1.2 125 27 5y
./run_aging.csh nor3 1.2 1.2 125 27 7y
./run_aging.csh nor3 1.2 1.2 125 27 10y

./run_aging.csh nor3 1.2 1.3 0 27 1d
./run_aging.csh nor3 1.2 1.3 0 27 1y
./run_aging.csh nor3 1.2 1.3 0 27 3y
./run_aging.csh nor3 1.2 1.3 0 27 5y
./run_aging.csh nor3 1.2 1.3 0 27 7y
./run_aging.csh nor3 1.2 1.3 0 27 10y

./run_aging.csh nor3 1.2 1.3 25 27 1d
./run_aging.csh nor3 1.2 1.3 25 27 1y
./run_aging.csh nor3 1.2 1.3 25 27 3y
./run_aging.csh nor3 1.2 1.3 25 27 5y
./run_aging.csh nor3 1.2 1.3 25 27 7y
./run_aging.csh nor3 1.2 1.3 25 27 10y

./run_aging.csh nor3 1.2 1.3 50 27 1d
./run_aging.csh nor3 1.2 1.3 50 27 1y
./run_aging.csh nor3 1.2 1.3 50 27 3y
./run_aging.csh nor3 1.2 1.3 50 27 5y
./run_aging.csh nor3 1.2 1.3 50 27 7y
./run_aging.csh nor3 1.2 1.3 50 27 10y

./run_aging.csh nor3 1.2 1.3 75 27 1d
./run_aging.csh nor3 1.2 1.3 75 27 1y
./run_aging.csh nor3 1.2 1.3 75 27 3y
./run_aging.csh nor3 1.2 1.3 75 27 5y
./run_aging.csh nor3 1.2 1.3 75 27 7y
./run_aging.csh nor3 1.2 1.3 75 27 10y

./run_aging.csh nor3 1.2 1.3 100 27 1d
./run_aging.csh nor3 1.2 1.3 100 27 1y
./run_aging.csh nor3 1.2 1.3 100 27 3y
./run_aging.csh nor3 1.2 1.3 100 27 5y
./run_aging.csh nor3 1.2 1.3 100 27 7y
./run_aging.csh nor3 1.2 1.3 100 27 10y

./run_aging.csh nor3 1.2 1.3 125 27 1d
./run_aging.csh nor3 1.2 1.3 125 27 1y
./run_aging.csh nor3 1.2 1.3 125 27 3y
./run_aging.csh nor3 1.2 1.3 125 27 5y
./run_aging.csh nor3 1.2 1.3 125 27 7y
./run_aging.csh nor3 1.2 1.3 125 27 10y

./run_aging.csh nor3 1.2 1.4 0 27 1d
./run_aging.csh nor3 1.2 1.4 0 27 1y
./run_aging.csh nor3 1.2 1.4 0 27 3y
./run_aging.csh nor3 1.2 1.4 0 27 5y
./run_aging.csh nor3 1.2 1.4 0 27 7y
./run_aging.csh nor3 1.2 1.4 0 27 10y

./run_aging.csh nor3 1.2 1.4 25 27 1d
./run_aging.csh nor3 1.2 1.4 25 27 1y
./run_aging.csh nor3 1.2 1.4 25 27 3y
./run_aging.csh nor3 1.2 1.4 25 27 5y
./run_aging.csh nor3 1.2 1.4 25 27 7y
./run_aging.csh nor3 1.2 1.4 25 27 10y

./run_aging.csh nor3 1.2 1.4 50 27 1d
./run_aging.csh nor3 1.2 1.4 50 27 1y
./run_aging.csh nor3 1.2 1.4 50 27 3y
./run_aging.csh nor3 1.2 1.4 50 27 5y
./run_aging.csh nor3 1.2 1.4 50 27 7y
./run_aging.csh nor3 1.2 1.4 50 27 10y

./run_aging.csh nor3 1.2 1.4 75 27 1d
./run_aging.csh nor3 1.2 1.4 75 27 1y
./run_aging.csh nor3 1.2 1.4 75 27 3y
./run_aging.csh nor3 1.2 1.4 75 27 5y
./run_aging.csh nor3 1.2 1.4 75 27 7y
./run_aging.csh nor3 1.2 1.4 75 27 10y

./run_aging.csh nor3 1.2 1.4 100 27 1d
./run_aging.csh nor3 1.2 1.4 100 27 1y
./run_aging.csh nor3 1.2 1.4 100 27 3y
./run_aging.csh nor3 1.2 1.4 100 27 5y
./run_aging.csh nor3 1.2 1.4 100 27 7y
./run_aging.csh nor3 1.2 1.4 100 27 10y

./run_aging.csh nor3 1.2 1.4 125 27 1d
./run_aging.csh nor3 1.2 1.4 125 27 1y
./run_aging.csh nor3 1.2 1.4 125 27 3y
./run_aging.csh nor3 1.2 1.4 125 27 5y
./run_aging.csh nor3 1.2 1.4 125 27 7y
./run_aging.csh nor3 1.2 1.4 125 27 10y