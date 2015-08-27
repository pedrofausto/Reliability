#!/bin/csh -f
# please set path to RelXpert installation.
# eg. setenv RELXPERTHOME /tools/RelXpert_10.1
# eg. set path=( $RELXPERTHOME/tools.lnx86/bin $path )
#
# you may run RelXpert using single steps as below (prebert, postert, prebert2) 
# or with 'RUN_RELXPERT' run script.

echo "Extracting delay for gate" $1
echo "DC operating voltage: " $2
echo "Temperature : " $3
echo "..."
echo " "

echo "Changing port type to" $1
sed -i s/inv/$1/g extract_delay.ocn

echo "Changing DC Operating voltage"
sed -i s/vdd1.0/vdd$2/g extract_delay.ocn

echo "Changing temperature for circuit simulation"
sed -i s/temp0/temp$3/g extract_delay.ocn

echo "..."
echo " "

ocean < extract_delay.ocn ocean > ocean.out

echo "Reverting to default values"
sed -i s/$1/inv/g extract_delay.ocn
sed -i s/vdd$2/vdd1.0/g extract_delay.ocn
sed -i s/temp$3/temp0/g extract_delay.ocn


echo "..."
echo "Done!"
echo " "
