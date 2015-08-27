#!/bin/csh -f
# please set path to RelXpert installation.
# eg. setenv RELXPERTHOME /tools/RelXpert_10.1
# eg. set path=( $RELXPERTHOME/tools.lnx86/bin $path )
#
# you may run RelXpert using single steps as below (prebert, postert, prebert2) 
# or with 'RUN_RELXPERT' run script.

echo "Aging and Simulating" $1 "gate"
echo "Nominal Power Supply (Vnom): " $2
echo "DC operating voltage: " $3
echo "Temperature : " $4
echo "Nominal Temperature (Tnom): " $5
echo "Aging to (days/years): " $6
echo "..."
echo " "

echo "Changing Nominal Power Supply (Vnome)"
sed -i s/vnom=1.0/vnom=$2/g $1

echo "Changing DC Operating voltage"
sed -i s/dc=1.0/dc=$3/g $1

echo "Changing temperature for circuit simulation"
sed -i s/temp=0/temp=$4/g $1

echo "Changing nominal temperature for circuit aging parameters extraction"
sed -i s/tnom=27/tnom=$5/g $1

echo "Changing aging parameter"
sed -i s/0y/$6/g $1
echo "..."
echo " "

echo "RelXpert batch run using ..."
echo "1. run prebert ... "
relxpert_pre -sp $1 $1.p1 > prebert_$1_vdd$3_temp$4.log
echo "..."
echo " "

echo "2. run spectre ... "
spectre $1.p1 > $1.out
echo "..."
echo " "

echo "3. run postbert ... "
relxpert_post -r $1.raw/tran.tran $1.out
echo "..."
echo " "

echo "4. run aging ... "
relxpert_pre -age -sp $1 $1Age.p2 > prebert2_$1_vdd$3_temp$4.log
echo "..."
echo " "

echo "Switching Tnom to default value to perform spectre simulation"
sed -i s/tnom=$5/tnom=$4/g $1
echo "..."
echo " "

echo "Spectre simulation..."
spectre $1Age.p2 > $1Age.out

echo "..."
echo " "
echo "Saving results to " $1Age_vdd$3_temp$4_Age$6
mv $1Age.raw $1Age_vdd$3_temp$4_Age$6

echo "Reverting to default values"
sed -i s/vnom=$2/vnom=1.0/g $1
sed -i s/dc=$3/dc=1.0/g $1
sed -i s/temp=$4/temp=0/g $1
sed -i s/tnom=$5/tnom=0/g $1
sed -i s/$6/0y/g $1
echo "..."
echo "Done!"
echo "RelXpert simulation completed! "
echo " "
