#!/bin/csh -f
# please set path to RelXpert installation.
# eg. setenv RELXPERTHOME /tools/RelXpert_10.1
# eg. set path=( $RELXPERTHOME/tools.lnx86/bin $path )
#
# you may run RelXpert using single steps as below (prebert, postert, prebert2) 
# or with 'RUN_RELXPERT' run script.

echo "RelXpert batch run using ..."
echo "1. run prebert ... "
echo "   prebert -sp ringos ringos.p1 > prebert.log"
prebert -sp ringos ringos.p1 > prebert.log
echo "2. run spectre ... "
echo "   spectre ringos.p1 > ringos.out"
spectre ringos.p1 > ringos.out
echo "3. run postbert ... "
echo "   postbert -r ringos.raw/tran.tran ringos.out"
postbert -r ringos.raw/tran.tran ringos.out
echo "4. run aging ... "
echo "   prebert2 -sp ringos ringosAge.p2 > prebert2.log"
prebert2 -sp ringos ringosAge.p2 > prebert2.log
echo "   spectre ringosAge.p2 > ringosAge.out"
spectre ringosAge.p2 > ringosAge.out
echo "RelXpert simulation completed! "
