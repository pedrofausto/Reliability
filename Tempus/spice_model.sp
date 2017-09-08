.MODEL nch NMOS (LEVEl=2 l=45n w=1u VTO=-1.1 TOX=2.41n)
.MODEL pch NMOS (LEVEl=2 l=45n w=2u VTO=-1.1 TOX=2.41n)

.SUBCKT NOR2_A A B Z gnd vdd
 TNA Z A gnd gnd nch l=45n w=1u 
 TNB Z B gnd gnd nch l=45n w=1u 
 TPA Z A net18 vdd pch l=45n w=2u 
 TPB net18 B vdd vdd pch l=45n w=2u 
.ENDS

.SUBCKT INVERT_D A Z gnd vdd
TNA Z A gnd gnd nch l=45n w=1u 
TPA Z A vdd vdd pch l=45n w=2u 
.ENDS

.SUBCKT INVERT_A A Z gnd vdd
TNA Z A gnd gnd nch l=45n w=1u 
TPA Z A vdd vdd pch l=45n w=2u 
.ENDS

.SUBCKT NAND2_A A B Z gnd vdd
TNA Z A net20 gnd nch l=45n w=1u 
TNB net20 B gnd gnd nch l=45n w=1u 
TPA Z A vdd vdd pch l=45n w=2u 
TPB Z B vdd vdd pch l=45n w=2u 
.ENDS

.SUBCKT AND2_B A B Z gnd vdd
TNA net29 A net34 gnd nch l=45n w=1u 
TNB net34 B gnd gnd nch l=45n w=1u 
TNZ Z net29 gnd gnd nch l=45n w=1u 
TPB net29 B vdd vdd pch l=45n w=2u 
TPA net29 A vdd vdd pch l=45n w=2u 
TPZ Z net29 vdd vdd pch l=45n w=2u 
.ENDS

.SUBCKT INVERT_I A Z gnd vdd
TNA Z A gnd gnd nch l=45n w=1u 
TPA Z A vdd vdd pch l=45n w=2u 
.ENDS

.SUBCKT OR2_B A B Z gnd vdd
TNZ Z net28 gnd gnd nch l=45n w=1u 
TNB net28 B gnd gnd nch l=45n w=1u 
TNA net28 A gnd gnd nch l=45n w=1u 
TPZ Z net28 vdd vdd pch l=45n w=2u 
TPA net28 A net34 vdd pch l=45n w=2u 
TPB net34 B vdd vdd pch l=45n w=2u 
.ENDS
