#!/bin/csh -f
echo -n "Removing all intermediate and result files ... "
\rm -rf ringos.* ringos*.txt ringosAge.* spectre* .relxpert_tmp .*.dpl *.log log*
echo " done. "
