/****************************************************************************
 *                                                                          *
 *  VERILOG HIGH-LEVEL DESCRIPTION OF THE ISCAS-85 BENCHMARK CIRCUIT c5315  *
 *                                                                          *  
 *                                                                          *
 *  Written by   : Hakan Yalcin (hyalcin@cadence.com)                       *
 *  Verified by  : Jonathan David Hauke (jhauke@eecs.umich.edu)             *
 *                                                                          *
 *  First created: Jan 31, 1997                                             *
 *  Last modified: Oct 20, 1998                                             *
 *                                                                          *
****************************************************************************/

module Circuit5315(
        in293, in302, in308, in316, in324, in341, in351, 
        in361, in299, in307, in315, in323, in331, in338, in348, 
        in358, in366, in206, in210, in218, in226, in234, in257, 
        in265, in273, in281, in209, in217, in225, in233, in241, 
        in264, in272, in280, in288, in54, in4, in2174, in1497, 
        in332, in335, in479, in490, in503, in514, in523, in534, 
        in446, in457, in468, in422, in435, in389, in400, in411, 
        in374, in191, in200, in194, in197, in203, in149, in155, 
        in188, in182, in161, in170, in164, in167, in173, in146, 
        in152, in158, in185, in109, in43, in46, in100, in91, 
        in76, in73, in67, in11, in106, in37, in49, in103, 
        in40, in20, in17, in70, in61, in123, in52, in121, 
        in116, in112, in130, in119, in129, in131, in115, in122, 
        in114, in53, in113, in128, in127, in126, in117, in176, 
        in179, in14, in64, in248, in251, in242, in254, in3552, 
        in3550, in3546, in3548, in120, in94, in118, in97, in4091, 
        in4092, in137, in4090, in4089, in4087, in4088, in1694, in1691, 
        in1690, in1689, in372, in369, in292, in289, in562, in245, 
        in552, in556, in559, in386, in132, in23, in80, in25, 
        in81, in79, in82, in24, in26, in86, in88, in87, 
        in83, in34, in4115, in135, in3717, in3724, in141, in2358, 
        in31, in27, in545, in549, in3173, in136, in1, in373, 
        in145, in2824, in140,
        out658, out690, out767, out807, out654, out651, out648, 
        out645, out642, out670, out667, out664, out661, out688, out685, 
        out682, out679, out676, out702, out699, out696, out693, out727, 
        out732, out737, out742, out747, out752, out757, out762, out722, 
        out712, out772, out777, out782, out787, out792, out797, out802, 
        out859, out824, out826, out832, out828, out830, out834, out836, 
        out838, out822, out863, out871, out865, out867, out869, out873, 
        out875, out877, out861, out629, out591, out618, out615, out621, 
        out588, out626, out632, out843, out882, out585, out575, out598, 
        out610, out998, out1002, out1000, out1004, out854, out623, out813, 
        out818, out707, out715, out639, out673, out636, out820, out717, 
        out704, out593, out594, out602, out809, out611, out599, out612, 
        out600, out850, out848, out849, out851, out887, out298, out926, 
        out892, out973, out993, out144, out601, out847, out815, out634, 
        out810, out845, out656, out923, out939, out921, out978, out949, 
        out889, out603, out604, out606);
 
   input
        in293, in302, in308, in316, in324, in341, in351, 
        in361, in299, in307, in315, in323, in331, in338, in348, 
        in358, in366, in206, in210, in218, in226, in234, in257, 
        in265, in273, in281, in209, in217, in225, in233, in241, 
        in264, in272, in280, in288, in54, in4, in2174, in1497, 
        in332, in335, in479, in490, in503, in514, in523, in534, 
        in446, in457, in468, in422, in435, in389, in400, in411, 
        in374, in191, in200, in194, in197, in203, in149, in155, 
        in188, in182, in161, in170, in164, in167, in173, in146, 
        in152, in158, in185, in109, in43, in46, in100, in91, 
        in76, in73, in67, in11, in106, in37, in49, in103, 
        in40, in20, in17, in70, in61, in123, in52, in121, 
        in116, in112, in130, in119, in129, in131, in115, in122, 
        in114, in53, in113, in128, in127, in126, in117, in176, 
        in179, in14, in64, in248, in251, in242, in254, in3552, 
        in3550, in3546, in3548, in120, in94, in118, in97, in4091, 
        in4092, in137, in4090, in4089, in4087, in4088, in1694, in1691, 
        in1690, in1689, in372, in369, in292, in289, in562, in245, 
        in552, in556, in559, in386, in132, in23, in80, in25, 
        in81, in79, in82, in24, in26, in86, in88, in87, 
        in83, in34, in4115, in135, in3717, in3724, in141, in2358, 
        in31, in27, in545, in549, in3173, in136, in1, in373, 
        in145, in2824, in140;
 
   output
        out658, out690, out767, out807, out654, out651, out648, 
        out645, out642, out670, out667, out664, out661, out688, out685, 
        out682, out679, out676, out702, out699, out696, out693, out727, 
        out732, out737, out742, out747, out752, out757, out762, out722, 
        out712, out772, out777, out782, out787, out792, out797, out802, 
        out859, out824, out826, out832, out828, out830, out834, out836, 
        out838, out822, out863, out871, out865, out867, out869, out873, 
        out875, out877, out861, out629, out591, out618, out615, out621, 
        out588, out626, out632, out843, out882, out585, out575, out598, 
        out610, out998, out1002, out1000, out1004, out854, out623, out813, 
        out818, out707, out715, out639, out673, out636, out820, out717, 
        out704, out593, out594, out602, out809, out611, out599, out612, 
        out600, out850, out848, out849, out851, out887, out298, out926, 
        out892, out973, out993, out144, out601, out847, out815, out634, 
        out810, out845, out656, out923, out939, out921, out978, out949, 
        out889, out603, out604, out606;


/************************/
   wire VDD;
   assign VDD = 1'b1;

   wire [8:0]	X0bus, X1bus, Abus;
   wire [8:0]	Y0bus, Y1bus, Bbus;
   wire		CinFX, CinFY;
   wire		CinParX, CinParY;
   wire		MuxSelX, MuxSelY;
   wire [10:0]	MuxSelPF;
   wire [8:0]	QF1bus, QF2bus, QF3bus, QF4bus;
   wire [8:0]	WXbus, WYbus;
   wire		QP1, QP2, QP3, QP4;
   wire [7:0]	ContLogic;
   wire [1:0]	ParXin, ParYin;
   wire [5:0]	ContParChk;
   wire [16:0]	MiscMuxIn;
   wire [7:0]	MiscContIn;
   wire [8:0]	MiscInbus;
   wire [1:0]	WparX, WparY;

   wire [8:0]	OF1bus, OF2bus, OF3bus, OF4bus;
   wire		OP1, OP2, OP3, OP4;
   wire		SumLogicParXout, SumLogicParYout;
   wire		CoutFX_in0, CoutFY_in0;
   wire		PropThruX, PropThruY;
   wire [8:0]	NotXFbus, NotYFbus;
   wire [3:0]	ZeroFlagOut;
   wire [4:0]	ParChkOut;
   wire [10:0]	MiscMuxOut;
   wire [25:0]	MiscOutbus;

/************************/

// inputs

   assign
      X0bus[8:0] = { in293, in302, in308, in316, in324,
		     VDD, in341, in351, in361 },
      X1bus[8:0] = { in299, in307, in315, in323, in331,
		     in338, in348, in358, in366 };
   assign
      Y0bus[8:0] = { in206, in210, in218, in226, in234,
		     in257, in265, in273, in281 },
      Y1bus[8:0] = { in209, in217, in225, in233, in241,
		     in264, in272, in280, in288 };
   assign
      CinFX = in54,     CinFY = in4,
      CinParX = in2174, CinParY = in1497;

   assign
      MuxSelX = in332, MuxSelY = in335;
   
   assign
      Abus[8:0] = { VDD, VDD, in479, in490, in503,
		    in514, in523, in534, VDD };
   assign
      Bbus[8:0] = { in446, in457, in468, in422, in435,
		    in389, in400, in411, in374 };
   assign
      QF1bus[8:0] = { in191, in194, in197, in203, in200,
		      in149, in155, in188, in182 },
      QF2bus[8:0] = { in161, in164, in167, in173, in170,
		      in146, in152, in158, in185 },
      QF3bus[8:0] = { in109, in46, in100, in91, in43,
		      in76, in73, in67, in11 },
      QF4bus[8:0] = { in106, in49, in103, in40, in37,
		      in20, in17, in70, in61 };

   assign
      WXbus[8:0] = { in123, in121, in116, in112, in52,
		     in130, in119, in129, in131 },
      WYbus[8:0] = { in115, in114, in53, in113, in122,
		     in128, in127, in126, in117 };

   assign
      QP1 = in176, QP2 = in179, QP3 = in14, QP4 = in64;
   
   assign
      ContLogic[7:0] = { in248, in251, in242, in254,
			 in3552, in3550, in3546, in3548 };
   assign
      WparX[1:0] = { in120, in94 },
      WparY[1:0] = { in118, in97 };

   assign
      MuxSelPF[10:0] = { in4091, in4092, in137, in4090, in4089, in4087,
			 in4088, in1694, in1691, in1690, in1689 };
   assign
      ParXin[1:0] = { in372, in369 },
      ParYin[1:0] = { in292, in289 };

   assign
      ContParChk[5:0] = { in562, in245, in552, in556, in559, in386 };

   assign
      MiscMuxIn[16:0] = { in132, in23, in80, in25, in81,
			  in79, in82, in24, in26, in86, in83, in88, in88,
			  in87, in83, in34, in34 };
   assign
      MiscContIn[7:0] = { in4115, in135, in3717, in3724,
			  in141, in2358, in31, in27 };
   assign
      MiscInbus[8:0] = { in545, in549, in3173, in136, in1,
			 in373, in145, in2824, in140 };

// outputs   

   assign
      out658 = OP1, out690 = OP2, out767 = OP3, out807 = OP4;

   assign
      { out654, out651, out648, out645, out642,
	out670, out667, out664, out661 } = OF1bus[8:0],
      { out688, out685, out682, out679, out676,
	out702, out699, out696, out693 } = OF2bus[8:0],
      { out727, out732, out737, out742, out747,
	out752, out757, out762, out722 } = OF3bus[8:0],
      { out712, out772, out777, out782, out787,
	out792, out797, out802, out859 } = OF4bus[8:0];

   assign
      { out824, out826, out828, out830, out832,
	out834, out836, out838, out822 } = NotXFbus[8:0],
      { out863, out865, out867, out869, out871,
	out873, out875, out877, out861 } = NotYFbus[8:0];

   assign
      out629 = CoutFX_in0, out591 = CoutFY_in0,
      out618 = CoutFX_in0, out621 = CoutFY_in0;

   assign
      out615 = PropThruX, out588 = PropThruY,
      out626 = PropThruX, out632 = PropThruY;

   assign
      out843 = SumLogicParXout, out882 = SumLogicParYout; 

   assign
      { out585, out575, out598, out610 } = ZeroFlagOut[3:0];

   assign
      { out998, out1002, out1000, out1004, out854 } = ParChkOut[4:0];

   assign
      { out623, out813, out818, out707, out715, out639,
	out673, out636, out820, out717, out704 } = MiscMuxOut[10:0];
   assign
      { out593, out594, out602, out809, out611, out599,
	out612, out600, out850, out848, out849, out851,
	out887, out298, out926, out892, out973, out993,
	out144, out601, out847, out815, out634, out810,
	out845, out656 } = MiscOutbus[25:0];

// identical misc. outputs
   assign
      out923 = out144, out939 = out993, out921 = out993,
      out978 = out993, out949 = out993, out889 = out887,
      out603 = out594, out604 = out594, out606 = out602;


/* instantiate top level circuit */

   TopLevel5315 Ckt5315( X0bus, X1bus, Abus, Y0bus, Y1bus, Bbus, CinFX, CinFY,
			 CinParX, CinParY, MuxSelX, MuxSelY, MuxSelPF,
			 QF1bus, QF2bus, QF3bus, QF4bus, QP1, QP2, QP3, QP4,
			 WXbus, WYbus, ContLogic, ParXin, ParYin, ContParChk,
			 MiscMuxIn, MiscContIn, MiscInbus, WparX, WparY,
				 
			 OF1bus, OF2bus, OF3bus, OF4bus, OP1, OP2, OP3, OP4,
			 SumLogicParXout, SumLogicParYout, CoutFX_in0, CoutFY_in0,
			 PropThruX, PropThruY, NotXFbus, NotYFbus, ZeroFlagOut,
			 ParChkOut, MiscMuxOut, MiscOutbus	);


endmodule // Circuit5315


/***************************************************************************/
/***************************************************************************/

module TopLevel5315( X0bus, X1bus, Abus, Y0bus, Y1bus, Bbus, CinFX, CinFY,
		     CinParX, CinParY, MuxSelX, MuxSelY, MuxSelPF,
		     QF1bus, QF2bus, QF3bus, QF4bus, QP1, QP2, QP3, QP4,
		     WXbus, WYbus, ContLogic, ParXin, ParYin, ContParChk,
		     MiscMuxIn, MiscContIn, MiscInbus, WparX, WparY,

		     OF1bus, OF2bus, OF3bus, OF4bus, OP1, OP2, OP3, OP4,
		     SumLogicParXout, SumLogicParYout, CoutFX_in0, CoutFY_in0,
		     PropThruX, PropThruY, NotFXbus, NotFYbus, ZeroFlagOut,
		     ParChkOut, MiscMuxOut, MiscOutbus	);

   input [8:0]	 X0bus, X1bus, Abus;
   input [8:0]	 Y0bus, Y1bus, Bbus;
   input	 CinFX, CinFY;
   input	 CinParX, CinParY;
   input	 MuxSelX, MuxSelY;
   input [10:0]	 MuxSelPF;
   input [8:0]	 QF1bus, QF2bus, QF3bus, QF4bus;
   input	 QP1, QP2, QP3, QP4;
   input [8:0]	 WXbus, WYbus;
   input [1:0]	 WparX, WparY;
   input [7:0]	 ContLogic;
   input [1:0]	 ParXin, ParYin;
   input [5:0]	 ContParChk;
   input [16:0]	 MiscMuxIn;
   input [7:0]	 MiscContIn;
   input [8:0]	 MiscInbus;

   output [8:0]	 OF1bus, OF2bus, OF3bus, OF4bus;
   output	 OP1, OP2, OP3, OP4;
   output	 SumLogicParXout, SumLogicParYout;
   output	 CoutFX_in0, CoutFY_in0;
   output	 PropThruX, PropThruY;
   output [8:0]	 NotFXbus, NotFYbus;
   output [3:0]	 ZeroFlagOut;
   output [4:0]	 ParChkOut;
   output [10:0] MiscMuxOut;
   output [25:0] MiscOutbus;


   wire [8:0]	 Xbus, Ybus;
   wire [8:0]	 FXbus, FYbus;
   wire [8:0]	 SumXbus, LogicXbus, SumYbus, LogicYbus;
   wire [3:0]	 ContLogicPar, NotContLogic3_0;
   wire [35:0]	 ContLogicInX, ContLogicInY;
   wire		 Not_SumLogicParX, Not_SumLogicParY;

   wire GND;
   assign GND = 1'b0;

   Mux9bit_2_1 M1( X0bus, X1bus, MuxSelX, Xbus );
   Mux9bit_2_1 M2( Y0bus, Y1bus, MuxSelY, Ybus );

   assign ContLogicPar[3:0] = ContLogic[7:4];
   
// parity blocks

   CalcParity  M3( X0bus, { GND, Abus[7:0] }, Xbus, Abus, WparX,
		   MuxSelPF[10:9], ContLogicPar, CinParX,
		   Not_SumLogicParX, SumLogicParXout );
   CalcParity  M4( Y0bus, Bbus, Ybus, Bbus, WparY,
		   MuxSelPF[10:9], ContLogicPar, CinParY,
		   Not_SumLogicParY, SumLogicParYout );
 
   MuxesPar_4  M5( Not_SumLogicParX, Not_SumLogicParY, QP1, QP2, QP3, QP4,
		   MuxSelPF[8:0], OP1, OP2, OP3, OP4 );
   
// sum-logic blocks

   Invert4 M0( ContLogic[3:0], NotContLogic3_0 );
   assign
      ContLogicInX[35:0] = { ContLogicPar, ContLogicPar, ContLogicPar,
			     ContLogicPar, NotContLogic3_0, NotContLogic3_0,
			     NotContLogic3_0, NotContLogic3_0, ContLogicPar },

      ContLogicInY[35:0] = { ContLogicPar, NotContLogic3_0, NotContLogic3_0,
			     NotContLogic3_0, NotContLogic3_0, NotContLogic3_0,
			     NotContLogic3_0, NotContLogic3_0, NotContLogic3_0 };

   CalcSumLogic M6( X0bus, { GND, Abus[7:0] }, Xbus, Abus, CinFX, WXbus,
		    ContLogicInX, MuxSelPF[10:9],
		    LogicXbus, SumXbus, FXbus, CoutFX_in0, PropThruX );

   CalcSumLogic M7( Y0bus, Bbus, Ybus, Bbus, CinFY, WYbus,
		    ContLogicInY, MuxSelPF[10:9],
		    LogicYbus, SumYbus, FYbus, CoutFY_in0, PropThruY );
   
   MuxesF8bit_4 M8( FXbus, FYbus, QF1bus, QF2bus, QF3bus, QF4bus, MuxSelPF[8:0],
		    OF1bus, OF2bus, OF3bus, OF4bus );

// other logic

   Invert9 M9( FXbus, NotFXbus ),
           M10( FYbus, NotFYbus );

   ZeroFlags M11( SumXbus, LogicXbus, SumYbus, LogicYbus, ZeroFlagOut );

   BusParityChk M12( X0bus, Xbus, Y0bus, Ybus, ParXin, ParYin,
		     MuxSelX, MuxSelY, ContParChk, ParChkOut );

// miscellaneous logic

   MiscLogic M13( MiscMuxIn, MiscContIn, MiscInbus, ContParChk,
		  Xbus[8], LogicXbus[8], SumXbus[8], WXbus[8],
		  X1bus[3:0], X1bus[8], X0bus[8], MuxSelPF[8],
		  MiscMuxOut, MiscOutbus );


endmodule // TopLevel5315

/***************************************************************************
 * Module: Mux9bit_2_1
 * 
 * Function: 9-bit 2:1 Muxes
***************************************************************************/

module Mux9bit_2_1( In0, In1, ContIn, Out );
   input [8:0]	 In0, In1;
   input		 ContIn;
   output [8:0] Out;

   Mux4bit_2_1 Mux9_0( In0[3:0], In1[3:0], ContIn, Out[3:0] ),
               Mux9_1( In0[7:4], In1[7:4], ContIn, Out[7:4] );
   Mux2_1      Mux9_2( In0[8], In1[8], ContIn, Out[8] );

endmodule // Mux9bit_2_1

/********************************************/

module Mux4bit_2_1( In0, In1, ContIn, Out );
   input [3:0]	In0, In1;
   input	ContIn;
   output [3:0]	Out;

   Mux2_1 Mux4_0( In0[0], In1[0], ContIn, Out[0] ),
   Mux4_1( In0[1], In1[1], ContIn, Out[1] ),
   Mux4_2( In0[2], In1[2], ContIn, Out[2] ),
   Mux4_3( In0[3], In1[3], ContIn, Out[3] );

endmodule // Mux4bit_2_1


/***************************************************************************
 * Module: CalcParity
 * 
 * Function: calculates the parity of the result (XYsumbus+ABsumbus+CinPar),
 *  and of (XYlogicbus OPR ABlogicbus), where OPR is a logical operator
 *  specified by ContLogicPar.
 * 
 *  - ContLogicPar is 4 bits wide, so the parity of 16 different logical
 *    functions can be calculated.
 * 
 ***************************************************************************/

module CalcParity( XYlogicbus, ABlogicbus, XYsumbus, ABsumbus, Wpar,
		   MuxSel, ContLogicPar, CinPar,
		   NotSumLogicPar, SumLogicParOut );

   input [8:0] XYlogicbus, ABlogicbus;
   input [8:0] XYsumbus, ABsumbus;
   input [1:0] Wpar;
   input [1:0] MuxSel;
   input [3:0] ContLogicPar;
   input       CinPar;
   output      NotSumLogicPar, SumLogicParOut;

   LogicParity CalP0( XYlogicbus, ABlogicbus, ContLogicPar, LogicPar );
   SumParity   CalP1( XYsumbus, ABsumbus, CinPar, SumPar );

   Muxes2_Mux4 CalP2( LogicPar, SumPar, Wpar, MuxSel,
		      NotSumLogicPar, SumLogicParOut );

endmodule // CalcParity

/********************************************/

module LogicParity( XYlogicbus, ABlogicbus, ContLogicPar, LogicPar );

   input [8:0] XYlogicbus, ABlogicbus;
   input [3:0] ContLogicPar;
   output      LogicPar;

   wire [35:0] ContLogicIn;
   wire [8:0]  LogicOut;
   
   assign
      ContLogicIn[35:0] = { ContLogicPar, ContLogicPar, ContLogicPar,
			    ContLogicPar, ContLogicPar, ContLogicPar,
			    ContLogicPar, ContLogicPar, ContLogicPar };
   
   ComputeLogic   LP0( XYlogicbus, ABlogicbus, ContLogicIn, LogicOut );

   ParityTree9bit LP1( LogicOut, LogicPar );

endmodule // LogicParity

/********************************************/

module ComputeLogic( In1bus, In2bus, ContLogicIn, Outbus );

   input [8:0]	In1bus, In2bus;
   input [35:0]	ContLogicIn;
   output [8:0]	Outbus;

   LogicBlock CL0( In1bus[0], In2bus[0], ContLogicIn[3:0],   Outbus[0] ),
   CL1( In1bus[1], In2bus[1], ContLogicIn[7:4],   Outbus[1] ),
   CL2( In1bus[2], In2bus[2], ContLogicIn[11:8],  Outbus[2] ),
   CL3( In1bus[3], In2bus[3], ContLogicIn[15:12], Outbus[3] ),
   CL4( In1bus[4], In2bus[4], ContLogicIn[19:16], Outbus[4] ),
   CL5( In1bus[5], In2bus[5], ContLogicIn[23:20], Outbus[5] ),
   CL6( In1bus[6], In2bus[6], ContLogicIn[27:24], Outbus[6] ),
   CL7( In1bus[7], In2bus[7], ContLogicIn[31:28], Outbus[7] ),
   CL8( In1bus[8], In2bus[8], ContLogicIn[35:32], Outbus[8] );
   
endmodule // ComputeLogic

/********************************************
 * LogicBlock: implements all 16 functions of
 *  In1 and In2 as selected by the 4-bit
 *  ContLogic input.
 ********************************************/

module LogicBlock( In1, In2, ContLogic, Out );

   input       In1, In2;
   input [3:0] ContLogic;
   output      Out;

   Mux2_1 LB0( ContLogic[0], ContLogic[1], In1, line0),
   LB1( ContLogic[2], ContLogic[3], In1, line1);
   or2    LB2( .A(In2), .B(line0), .Y(line2) );
   nand2    LB3( .A(In2), .B(line1), .Y(line3) );
   and2    LB4( .A(line2), .B(line3), .Y(Out) );

endmodule // LogicBlock

/***********************************************************************
 * Submodule: SumParity
 * 
 * Function: calculates the parity of the sum (In1bus + In2bus + Cin)
 * 
 *  The parity is calculated separately for the lower 5-bit block
 *  and the upper 4-bit block. In each case, two parities are calculated:
 *  one with an assumed carry of 0 to that block, and another with 1.
 *  For the 5-bit block, the correct parity is determined by Cin.
 *  For the 4-bit block, the carry input Cin as well as the carry from
 *  the (lower) 5-bit block to the (higher) 4-bit block determine
 *  the correct parity.
 * 
 ************************************************************************/

module SumParity( In1bus, In2bus, Cin, SumPar );

   input [8:0] In1bus, In2bus;
   input       Cin;
   output      SumPar;

   wire [8:0]  Genbus, Propbus;
   wire [8:0]  LocalC0, LocalC1;

   GenProp9       SP0( In1bus, In2bus, Genbus, Propbus );

   // first caculate the local carries
   //  (local carries in 8th position are not needed)

   GenLocalCarry5 SP1( Genbus[4:0], Propbus[4:0], LocalC0[4:0], LocalC1[4:0] );
   GenLocalCarry3 SP2( Genbus[7:5], Propbus[7:5], LocalC0[7:5], LocalC1[7:5] );   

   SerialParity9nc SP3( { Propbus[4:0], LocalC0[3:0] }, ParLo0 );
   SerialParity9c  SP4( { Propbus[4:0], LocalC1[3:0] }, ParLo1 );
   SerialParity7nc SP5( { Propbus[8:5], LocalC0[7:5] }, ParHi0 );
   SerialParity7c  SP6( { Propbus[8:5], LocalC1[7:5] }, ParHi1 );

   Mux2_1 SP7( ParLo0, ParLo1, Cin, ParLo),
   SP8( ParHi0, ParHi1, LocalC0[4], ParHiCin0),
   SP9( ParHi0, ParHi1, LocalC1[4], ParHiCin1),
   SP10( ParHiCin0, ParHiCin1, Cin, ParHi);

   XOR2a  SP11( .A(ParLo), .B(ParHi), .Y(SumPar) );

endmodule // SumParity

/********************************************/

module GenProp9( In1bus, In2bus, Gbus, Pbus);

   input [8:0]	In1bus, In2bus;
   output [8:0]	Gbus, Pbus;

   and2  GP9_0( .A(In1bus[0]), .B(In2bus[0]), .Y(Gbus[0]) ),
   GP9_1( .A(In1bus[1]), .B(In2bus[1]), .Y(Gbus[1]) ),
   GP9_2( .A(In1bus[2]), .B(In2bus[2]), .Y(Gbus[2]) ),
   GP9_3( .A(In1bus[3]), .B(In2bus[3]), .Y(Gbus[3]) ),
   GP9_4( .A(In1bus[4]), .B(In2bus[4]), .Y(Gbus[4]) ),
   GP9_5( .A(In1bus[5]), .B(In2bus[5]), .Y(Gbus[5]) ),
   GP9_6( .A(In1bus[6]), .B(In2bus[6]), .Y(Gbus[6]) ),
   GP9_7( .A(In1bus[7]), .B(In2bus[7]), .Y(Gbus[7]) ),
   GP9_8( .A(In1bus[8]), .B(In2bus[8]), .Y(Gbus[8]) );
   
   XOR2a GP9_9( .A(In1bus[0]), .B(In2bus[0]), .Y(Pbus[0]) ),
   GP9_10( .A(In1bus[1]), .B(In2bus[1]), .Y(Pbus[1]) ),
   GP9_11( .A(In1bus[2]), .B(In2bus[2]), .Y(Pbus[2]) ),
   GP9_12( .A(In1bus[3]), .B(In2bus[3]), .Y(Pbus[3]) ),
   GP9_13( .A(In1bus[4]), .B(In2bus[4]), .Y(Pbus[4]) ),
   GP9_14( .A(In1bus[5]), .B(In2bus[5]), .Y(Pbus[5]) ),
   GP9_15( .A(In1bus[6]), .B(In2bus[6]), .Y(Pbus[6]) ),
   GP9_16( .A(In1bus[7]), .B(In2bus[7]), .Y(Pbus[7]) ),
   GP9_17( .A(In1bus[8]), .B(In2bus[8]), .Y(Pbus[8]) );   

endmodule // GenProp9

/********************************************/

module GenLocalCarry5( Gbus, Pbus, LocalC0, LocalC1 );

   input [4:0]	Gbus, Pbus;
   output [4:0]	LocalC0, LocalC1;
   
   GenLocalCarry4 GLC5_0( Gbus[3:0], Pbus[3:0],
			  LocalC0[3:0], LocalC1[3:0] );

   AND_OR5a GLC5_1( Gbus[4], Pbus[4], Gbus[3], Pbus[3], Gbus[2],
		    Pbus[2], Gbus[1], Pbus[1], Gbus[0],
		    LocalC0[4] );
   AND_OR6b GLC5_2( Gbus[4], Pbus[4], Gbus[3], Pbus[3], Gbus[2],
		    Pbus[2], Gbus[1], Pbus[1], Gbus[0], Pbus[0],
		    LocalC1[4] );
   
endmodule // GenLocalCarry5

/******************************************************/

module GenLocalCarry4( Gbus, Pbus, LocalC0, LocalC1 );

   input [3:0]	Gbus, Pbus;
   output [3:0]	LocalC0, LocalC1;
   
   GenLocalCarry3 GLC4_0( Gbus[2:0], Pbus[2:0],
			  LocalC0[2:0], LocalC1[2:0] );

   AND_OR4a GLC4_1( Gbus[3], Pbus[3], Gbus[2], Pbus[2], Gbus[1],
		    Pbus[1], Gbus[0], LocalC0[3] );
   AND_OR5b GLC4_2( Gbus[3], Pbus[3], Gbus[2], Pbus[2], Gbus[1],
		    Pbus[1], Gbus[0], Pbus[0], LocalC1[3] );

endmodule // GenLocalCarry4

/******************************************************/

module GenLocalCarry3( Gbus, Pbus, LocalC0, LocalC1 );

   input [2:0]	Gbus, Pbus;
   output [2:0]	LocalC0, LocalC1;
   
   assign LocalC0[0] = Gbus[0];
   or2 GLC4_0( .A(Gbus[0]), .B(Pbus[0]), .Y(LocalC1[0]) );

   AND_OR2  GLC4_1( Gbus[1], Pbus[1], Gbus[0], LocalC0[1] );
   AND_OR3b GLC4_2( Gbus[1], Pbus[1], Gbus[0], Pbus[0], LocalC1[1] );

   AND_OR3a GLC4_3( Gbus[2], Pbus[2], Gbus[1], Pbus[1], Gbus[0],
		    LocalC0[2] );
   AND_OR4b GLC4_4( Gbus[2], Pbus[2], Gbus[1], Pbus[1], Gbus[0],
		    Pbus[0], LocalC1[2] );

endmodule // GenLocalCarry3

/******************************************************/

module SerialParity9nc( Inbus, Out);

   input [8:0] Inbus;
   output      Out;
   
   SerialParity7nc SP9nc0( Inbus[6:0], line0 );
   XOR2a           SP9nc1( .A(Inbus[7]), .B(line0), .Y(line1) ),
   SP9nc2( .A(Inbus[8]), .B(line1), .Y(Out) );

endmodule // SerialParity9nc

/******************************************************/

module SerialParity9c( Inbus, Out);

   input [8:0] Inbus;
   output      Out;
   
   // Inbus[6] is inverted in SerialParity7c
   SerialParity7c SP9nc0( Inbus[6:0], line0 );
   XOR2a          SP9nc1( .A(Inbus[7]), .B(line0), .Y(line1) ),
   SP9nc2( .A(Inbus[8]), .B(line1), .Y(Out) );

endmodule // SerialParity9c

/******************************************************/

module SerialParity7nc( Inbus, Out);

   input [6:0] Inbus;
   output      Out;
   
   XOR2a SP7nc0( .A(Inbus[0]), .B(Inbus[1]), .Y(line0) ),
   SP7nc1( .A(Inbus[2]), .B(line0), .Y(line1) ),
   SP7nc2( .A(Inbus[3]), .B(line1), .Y(line2) ),
   SP7nc3( .A(Inbus[4]), .B(line2), .Y(line3) ),
   SP7nc4( .A(Inbus[5]), .B(line3), .Y(line4) ),
   SP7nc5( .A(Inbus[6]), .B(line4), .Y(Out) );

endmodule // SerialParity7nc

/******************************************************/

module SerialParity7c( Inbus, Out);

   input [6:0] Inbus;
   output      Out;
   
   wire [6:0]  NewInbus;

   // invert one bit to complement the output
   // -- Inbus[6] is chosen so the inverter is not on the longest path

   inv  SP7c0( .A(Inbus[6]), .Y(NewInbus[6]) );
   assign NewInbus[5:0] = Inbus[5:0];

   SerialParity7nc SP7c2( NewInbus, Out );

endmodule // SerialParity7c

/******************************************************/

module Muxes2_Mux4( LogicPar, SumPar, Wpar, MuxSel,
		    NotSumLogicPar, SumLogicParOut );

   input       LogicPar, SumPar;
   input [1:0] Wpar, MuxSel;
   output      NotSumLogicPar, SumLogicParOut;

   inv    M2M4_0( .A(LogicPar), .Y(NotLogicPar) ),
   M2M4_1( .A(SumPar), .Y(NotSumPar) );
   Mux2_1 M2M4_2( NotLogicPar, NotSumPar, MuxSel[1], line0 ),
   M2M4_3( line0, Wpar[0], MuxSel[0], NotSumLogicPar );

   Mux4_1 M2M4_4( LogicPar, Wpar[1], SumPar, 1'b1,
		  MuxSel[1], MuxSel[0], SumLogicParOut );
   
endmodule // Muxes2_Mux4


/***************************************************************************
 * Module: MuxesPar_4
 * 
 * Function: includes a set of 4 muxes.
 *  The outputs of two of the muxes can be masked with an AND gate.
 * 
 ***************************************************************************/

module MuxesPar_4( ParX, ParY, QP1, QP2, QP3, QP4, MuxSelbus,
		   OP1, OP2, OP3, OP4 );

   input       ParX, ParY, QP1, QP2, QP3, QP4;
   input [8:0] MuxSelbus;
   output      OP1, OP2, OP3, OP4;

   Muxes4  MP0( ParX, ParY, QP1, QP2, QP3, QP4, MuxSelbus,
		NotOP1, NotOP2, OP3, OP4 );
   inv     MP1( .A(NotOP1), .Y(OP1) ),
   MP2( .A(NotOP2), .Y(OP2) );

endmodule // MuxesPar_4

/********************************************/

module Muxes4( InM1, InM2, In1, In2, In3, In4, MuxSelbus,
	       Out1, Out2, Out3, Out4 );

   input       InM1, InM2, In1, In2, In3, In4;
   input [8:0] MuxSelbus;
   output      Out1, Out2, Out3, Out4;

   Mux4_1 MXS0( InM1, InM2, In1, In2, MuxSelbus[1], MuxSelbus[0], tempOut1 ),
   MXS1( InM1, InM2, In1, In2, MuxSelbus[3], MuxSelbus[2], tempOut2 ),
   MXS2( InM1, InM2, In3, In4, MuxSelbus[5], MuxSelbus[4], Out3 ),
   MXS3( InM1, InM2, In3, In4, MuxSelbus[7], MuxSelbus[6], Out4 );

   and2   MXS4( .A(tempOut1), .B(MuxSelbus[8]), .Y(Out1) ),
   MXS5( .A(tempOut2), .B(MuxSelbus[8]), .Y(Out2) );

endmodule // Muxes4


/***************************************************************************
 * Module: CalcSumLogic
 * 
 * Function: calculates the sum (XYsumbus + ABsumbus + Cin), and
 * the logical operation (XYlogicbus OPR ABlogicbus), both of which
 * are 9 bits wide.
 * 
 * -Note that the OPR is not uniform for all bit positions; that's why
 *  it's 36 bits wide, 4 bits for each bit.
 * 
 * -Also computed by the Adder9 module are Cout_in0 and PropThru.
 *   Cout_in0: the carry-out bit assuming Cin=0
 *   PropThru: AND of all propagate bits, so it indicates whether
 *   Cin can propagate all the way through 9 bits.
 *  (The actual carry output can be calculated by Cout_in0+Cin.PropThru)
 * 
 ***************************************************************************/

module CalcSumLogic( XYlogicbus, ABlogicbus, XYsumbus, ABsumbus, Cin, WXYbus,
		     ContLogicIn, MuxSel,
		     Logicbus, Sumbus, FXYbus, Cout_in0, PropThru );

   input [8:0]	XYlogicbus, ABlogicbus;
   input [8:0]	XYsumbus, ABsumbus;
   input	Cin;
   input [8:0]	WXYbus;
   input [35:0]	ContLogicIn;
   input [1:0]	MuxSel;
   output [8:0]	Sumbus, Logicbus;
   output [8:0]	FXYbus;
   output	Cout_in0, PropThru;


   ComputeLogic CSL0( XYlogicbus, ABlogicbus, ContLogicIn, Logicbus );

   Adder9       CSL1( XYsumbus, ABsumbus, Cin, Sumbus, Cout_in0, PropThru );

   Mux9bit_4_1  CSL2( Logicbus, WXYbus, Sumbus, { 9'b000000000 },
		      MuxSel[1], MuxSel[0], FXYbus );

endmodule // CalcSumLogic

/********************************************************************
 * Submodule: Adder9
 * 
 * Function: calculates the sum (In1bus + In2bus + Cin).
 * 
 *  The structure of this adder is slightly different from the
 *  one that computes the parity of the result.
 *  A CLA is used to compute the sum outputs for the lower
 *  6 bits. Two sets of sum signals are computed for the upper
 *  3 bits: one assuming carry[4]=0, and another assuming carry[4]=1
 *  The actual carry[4] signal selects the correct sum bits.
 * 
 ********************************************************************/

module Adder9 ( In1bus, In2bus, Cin, Sumbus, Cout_in0, PropThru );

   input [8:0]	In1bus, In2bus;
   input	Cin;
   output [8:0]	Sumbus;
   output	Cout_in0, PropThru;

   wire [8:0]	Genbus, Propbus;
   wire [2:0]	LocalHC0, LocalHC1;       // for bits # 7-5
   wire [4:0]	Carry;
   wire [5:0]	SumH01bus;


   GenProp9 Add0( In1bus, In2bus, Genbus, Propbus );

   // generate actual carry lines #0-4
   // Cout_in0 is the carry for the entire operation with Cin=0

   CLAblock Add1( Genbus, Propbus, Cin, Carry, Cout_in0, PropThru );

   // generate local carries for bits #7-5
   GenLocalCarry3 Add2( Genbus[7:5], Propbus[7:5], LocalHC0, LocalHC1 );   

   // for bits # 0-5, generate sum directly : prop XOR carry
   XOR2a6bit Add3( Propbus[5:0], { Carry[4:0], Cin }, Sumbus[5:0] );

   // for bits #6-8, generate two sums, one assuming Carry[4]=0,
   //                                   the other assuming Carry[4]=1
   XOR2a6bit Add4( { Propbus[8:6], Propbus[8:6] },
		   { LocalHC1[2:0], LocalHC0[2:0] }, SumH01bus );

   // now choose the correct sums #6-8
   Mux2_1 Add5( SumH01bus[0], SumH01bus[3], Carry[4], Sumbus[6] ),
   Add6( SumH01bus[1], SumH01bus[4], Carry[4], Sumbus[7] ),
   Add7( SumH01bus[2], SumH01bus[5], Carry[4], Sumbus[8] );

endmodule // Adder9

/********************************************/

module CLAblock( Gbus, Pbus, Cin, Carry, Cout_in0, PropThru );

   input [8:0]	Gbus, Pbus;
   input	Cin;
   output [4:0]	Carry;
   output	Cout_in0, PropThru;
   
   wire		LocalC0_4;

   // actual carry lines #0-3
   AND_OR2  CB0( Gbus[0], Pbus[0], Cin, Carry[0] );
   AND_OR3a CB1( Gbus[1], Pbus[1], Gbus[0], Pbus[0], Cin, Carry[1] );
   AND_OR4a CB2( Gbus[2], Pbus[2], Gbus[1], Pbus[1], Gbus[0],
		 Pbus[0], Cin, Carry[2] );
   AND_OR5a CB3( Gbus[3], Pbus[3], Gbus[2], Pbus[2], Gbus[1], Pbus[1],
		 Gbus[0], Pbus[0], Cin, Carry[3] );

   // LocalC0_4 is the carry out of bit #4 with Cin=0
   AND_OR5a CB4( Gbus[4], Pbus[4], Gbus[3], Pbus[3], Gbus[2], Pbus[2],
		 Gbus[1], Pbus[1], Gbus[0], LocalC0_4 );

   and5      CB5( .A(Pbus[0]), .B(Pbus[1]), .C(Pbus[2]),
		  .D(Pbus[3]), .E(Pbus[4]), .Y(Prop4_0) );
   and2      CB6( .A(Cin), .B(Prop4_0), .Y(PropCin) );
   or2      CB7( .A(LocalC0_4), .B(PropCin), .Y(Carry[4]) );

   // now Cout_in0 (the carryout line for the entire operation with Cin=0)
   AND_OR5a CB8( Gbus[8], Pbus[8], Gbus[7], Pbus[7], Gbus[6], Pbus[6],
		 Gbus[5], Pbus[5], LocalC0_4, Cout_in0 );

   // Propthr: and of all propagate lines
   and4 CB9( .A(Pbus[5]), .B(Pbus[6]), .C(Pbus[7]), .D(Pbus[8]),
	     .Y(Prop8_5) );
   and2 CB10( .A(Prop4_0), .B(Prop8_5), .Y(PropThru) );

endmodule // CLAblock


/***************************************************************************
 * Module: MuxesF8bit_4
 * 
 * Function: includes four sets of 9-bit Muxes whose inputs are 
 *  FXbus and FYbus, the outputs of the CalcSumLogic modules, and 
 *  input buses QF1, QF2, QF3, QF4.
 * 
 ***************************************************************************/

module MuxesF8bit_4( FXbus, FYbus, QF1bus, QF2bus, QF3bus, QF4bus, MuxSelbus,
		     OF1bus, OF2bus, OF3bus, OF4bus );

   input [8:0]	FXbus, FYbus, QF1bus, QF2bus, QF3bus, QF4bus;
   input [8:0]	MuxSelbus;
   output [8:0]	OF1bus, OF2bus, OF3bus, OF4bus;

   MuxesF4bit_4 MF8_0( FXbus[3:0], FYbus[3:0], QF1bus[3:0], QF2bus[3:0],
		       QF3bus[3:0], QF4bus[3:0], MuxSelbus[8:0],
		       OF1bus[3:0], OF2bus[3:0], OF3bus[3:0], OF4bus[3:0] ),
   MF8_1( FXbus[7:4], FYbus[7:4], QF1bus[7:4], QF2bus[7:4],
	  QF3bus[7:4], QF4bus[7:4], MuxSelbus[8:0],
	  OF1bus[7:4], OF2bus[7:4], OF3bus[7:4], OF4bus[7:4] );
   Muxes4       MF8_2( FXbus[8], FYbus[8], QF1bus[8], QF2bus[8],
		       QF3bus[8], QF4bus[8], MuxSelbus[8:0],
		       OF1bus[8], OF2bus[8], OF3bus[8], OF4bus[8] ); 

endmodule // MuxesF8bit_4

/********************************************/

module MuxesF4bit_4( FXbus, FYbus, QF1bus, QF2bus, QF3bus, QF4bus, MuxSelbus,
		     OF1bus, OF2bus, OF3bus, OF4bus );

   input [3:0]	FXbus, FYbus, QF1bus, QF2bus, QF3bus, QF4bus;
   input [8:0]	MuxSelbus;
   output [3:0]	OF1bus, OF2bus, OF3bus, OF4bus;

   Muxes4 MF4_0( FXbus[0], FYbus[0], QF1bus[0], QF2bus[0],
		 QF3bus[0], QF4bus[0], MuxSelbus[8:0],
		 OF1bus[0], OF2bus[0], OF3bus[0], OF4bus[0] ),
   MF4_1( FXbus[1], FYbus[1], QF1bus[1], QF2bus[1],
	  QF3bus[1], QF4bus[1], MuxSelbus[8:0],
	  OF1bus[1], OF2bus[1], OF3bus[1], OF4bus[1] ),
   MF4_2( FXbus[2], FYbus[2], QF1bus[2], QF2bus[2],
	  QF3bus[2], QF4bus[2], MuxSelbus[8:0],
	  OF1bus[2], OF2bus[2], OF3bus[2], OF4bus[2] ),
   MF8_3( FXbus[3], FYbus[3], QF1bus[3], QF2bus[3],
	  QF3bus[3], QF4bus[3], MuxSelbus[8:0],
	  OF1bus[3], OF2bus[3], OF3bus[3], OF4bus[3] );

endmodule // MuxesF4bit_4


/***************************************************************************
 * Module: ZeroFlags
 * 
 * Function: generates the zero signal for four 9-bit buses:
 *   SumX, LogicX, SumY and LogicY.
 *   In each case, the zero signal is equal to the NOR of all the inputs.
 * 
 ***************************************************************************/

module ZeroFlags( SumX, LogicX, SumY, LogicY, ZeroFlagOut );

   input [8:0]	SumX, LogicX, SumY, LogicY;
   output [3:0]	ZeroFlagOut;
   
   NOR9 ZF0( SumX, ZeroFlagOut[3] ),
   ZF1( SumY, ZeroFlagOut[2] ),
   ZF2( LogicX, ZeroFlagOut[1] ),
   ZF3( LogicY, ZeroFlagOut[0] );

endmodule // ZeroFlags

/***************************************************************************
 * Module: BusParityChk
 * 
 * Function: computes the parity of four 10-bit buses:
 *  X0bus, Xbus, Y0bus and Ybus, each with an additional input.
 *  ParChkOut[0] is the AND of all the bus parities and can be masked
 *  by ContParChk inputs.
 * 
 ***************************************************************************/

module BusParityChk( X0bus, Xbus, Y0bus, Ybus, ParXin, ParYin,
		     MuxSelX, MuxSelY, ContParChk, ParChkOut );

   input [8:0]	X0bus, Xbus, Y0bus, Ybus;
   input [1:0]	ParXin, ParYin;
   input	MuxSelX, MuxSelY;
   input [5:0]	ContParChk;
   output [4:0]	ParChkOut;

   wire		ParX, ParY;
   wire [3:0]	NotParChk;

   Mux2_1 BPC0( ParXin[0], ParXin[1], MuxSelX, ParX ),
   BPC1( ParYin[0], ParYin[1], MuxSelY, ParY );

   ParityTree10bit BPC2( { ParX, Xbus[8:0] }, ParChkOut[4] ),
   BPC3( { ParXin[0], X0bus[8:0] }, ParChkOut[3] ),
   BPC4( { ParY, Ybus[8:0] }, ParChkOut[2] ),
   BPC5( { ParYin[0], Y0bus[8:0] }, ParChkOut[1] );

   Invert4  BPC6( ParChkOut[4:1], NotParChk );
   and5      BPC7( .A(NotParChk[3]), .B(NotParChk[2]), .C(NotParChk[1]),
		   .D(NotParChk[0]), .E(ContParChk[5]), .Y(line7) );
   and4      BPC8( .A(ContParChk[0]), .B(ContParChk[1]), .C(ContParChk[2]),
		   .D(ContParChk[3]), .Y(line8) );
   and3      BPC9( .A(line8), .B(line7), .C(ContParChk[4]),
		   .Y(ParChkOut[0]) );

endmodule // BusParityChk

/***************************************************************************
 * Module: MiscLogic
 * 
 * Function: contains muxes and gates that are mostly unstructured 
 *  and unrelated to the rest of the circuit.
 * 
 *  - The MiscMuxLogic block includes four 2:1 and 4:1 muxes with
 *    independent inputs.
 *  - The MiscRandomLogic block contains mostly inverters and buffers.
 * 
 ***************************************************************************/

module MiscLogic( MiscMuxIn, MiscContIn, MiscInbus, ContParChk,
		  Xbus_8, LogicXbus_8, SumXbus_8, WXbus_8,
		  X1bus3_0, X1bus_8, X0bus_8, MuxSelPF_8,
		  MiscMuxOut, MiscOutbus );
   
   input [16:0]	 MiscMuxIn;
   input [7:0]	 MiscContIn;
   input [8:0]	 MiscInbus;
   input [5:0]	 ContParChk;
   input	 Xbus_8, LogicXbus_8, SumXbus_8, WXbus_8;
   input	 X1bus_8, X0bus_8, MuxSelPF_8;
   input [3:0]	 X1bus3_0;
   output [10:0] MiscMuxOut;
   output [25:0] MiscOutbus;
   
   wire		 ContBeta;

   MiscMuxLogic UM13_0( { Xbus_8, LogicXbus_8, SumXbus_8, WXbus_8, MiscMuxIn },
			MiscContIn, ContBeta, MiscMuxOut );

   MiscRandomLogic UM13_1( { X1bus3_0, X1bus_8, X0bus_8, MuxSelPF_8, MiscInbus },
			   ContParChk, MiscContIn, ContBeta, MiscOutbus );

endmodule // MiscLogic

/********************************************/

module  MiscMuxLogic( NewMuxIn, MiscContIn, ContBeta, MiscMuxOut );

   input [20:0]	 NewMuxIn;
   input [7:0]	 MiscContIn;
   output	 ContBeta;
   output [10:0] MiscMuxOut;

   wire [3:0]	 tempOut1, tempOut2, tempOut3;

   and2 MML0( .A(MiscContIn[0]), .B(MiscContIn[1]), .Y(ContBeta) );
   inv  MML1( .A(ContBeta), .Y(NotContBeta) ),
   MML2( .A(MiscContIn[2]), .Y(NotContIn2) );

   Mux4bit_2_1 MML3( NewMuxIn[3:0], NewMuxIn[7:4], NotContIn2,
		     tempOut1 );
   Mux4bit_4_1 MML4( NewMuxIn[11:8], NewMuxIn[15:12], { 4'b1111 },
		     { 4'b1111 }, NotContBeta, MiscContIn[2],
		     tempOut2 );

   // MiscMuxOut[3:0] and MiscMuxOut[7:4]
   Mask_And4bit MML5( tempOut1, ContBeta, tempOut3 );
   Invert4      MML6( tempOut3, MiscMuxOut[3:0] ); 
   Mask_And4bit MML7( tempOut2, MiscContIn[3], MiscMuxOut[7:4] );
   
   // MiscMuxOut[8] -- out818
   inv     MML8( .A(NewMuxIn[20]), .Y(NotMuxIn20) );
   XOR2b  MML9( .A(NotMuxIn20), .B(NewMuxIn[16]), .Y(tempMuxin) );
   Mux4_1 MML10( NewMuxIn[19], tempMuxin, NewMuxIn[17], NewMuxIn[18],
		 MiscContIn[5], MiscContIn[4], tempMuxout );
   nand2    MML11( .A(MiscContIn[6]), .B(MiscContIn[7]), .Y(tempMuxcont) );
   and2    MML12( .A(tempMuxcont), .B(tempMuxout), .Y(MiscMuxOut[8]) );

   // MiscMuxOut[9] -- out813
   XOR2b  MML13( .A(tempMuxin), .B(NewMuxIn[18]), .Y(MiscMuxOut[9]) );

   // MiscMuxOut[10]=not(SumXbus[8]) -- out623
   inv     MML14( .A(NewMuxIn[18]), .Y(MiscMuxOut[10]) );

endmodule // MiscMuxLogic

/********************************************/

module MiscRandomLogic( NewMiscbus, ContParChk, MiscContIn, ContBeta, MiscOutbus );

   input [15:0]	 NewMiscbus;
   input [5:0]	 ContParChk;
   input [7:0]	 MiscContIn;
   input	 ContBeta;
   output [25:0] MiscOutbus;

   // NewMiscbus: { X1bus3_0, X1bus_8, X0bus_8, MuxSelPF_8, MiscInbus }
   //                 15-12      11       10       9            8-0

   nand2   MRL0( .A(ContBeta), .B(NewMiscbus[0]), .Y(MiscOutbus[0]) );

   inv    MRL1( .A(NewMiscbus[1]), .Y(NotMisc1) );
   and2   MRL2( .A(NotMisc1), .B(MiscContIn[0]), .Y(line2) );
   inv    MRL3( .A(line2), .Y(MiscOutbus[1]) );

   and2   MRL4( .A(MiscContIn[3]), .B(NewMiscbus[2]), .Y(MiscOutbus[2]) );

   nand2   MRL5( .A(NewMiscbus[3]), .B(NewMiscbus[4]), .Y(line6) );
   inv    MRL6( .A(line6), .Y(MiscOutbus[3]) );

   inv    MRL7( .A(NewMiscbus[6]), .Y(NotMisc6) );
   and2   MRL8( .A(NewMiscbus[5]), .B(NotMisc6), .Y(MiscOutbus[4]) );

   and2   MRL9( .A(ContParChk[0]), .B(ContParChk[2]), .Y(line12) );
   inv    MRL10( .A(line12), .Y(MiscOutbus[5]) );

   and2   MRL11( .A(ContParChk[3]), .B(ContParChk[5]), .Y(MiscOutbus[6]) );

   Buffer7 MRL12( { NewMiscbus[11:9], NewMiscbus[7:6], NewMiscbus[4],
		    MiscContIn[3] }, MiscOutbus[13:7] );
   Invert4 MRL13( { ContParChk[5:3], ContParChk[1] }, MiscOutbus[17:14] );

   Invert4 MRL14( NewMiscbus[15:12], MiscOutbus[21:18] );

   Invert4 MRL15( { NewMiscbus[11], NewMiscbus[8:7], ContBeta },
		  MiscOutbus[25:22] );

endmodule // MiscRandomLogic


/***************************************************************************
 * Description of some basic gates/modules
 ***************************************************************************/

/********************************************/

module ParityTree10bit( Inbus, ParOut );

   input [9:0] Inbus;
   output      ParOut;

   XOR2a PT0( .A(Inbus[5]), .B(Inbus[6]), .Y(line0) ),
   PT1( .A(Inbus[7]), .B(Inbus[8]), .Y(line1) ),
   PT2( .A(Inbus[0]), .B(Inbus[9]), .Y(line2) ),
   PT3( .A(Inbus[1]), .B(Inbus[2]), .Y(line3) ),
   PT4( .A(Inbus[3]), .B(Inbus[4]), .Y(line4) );
   XOR2a PT5( .A(line0), .B(line1), .Y(line5) );
   XOR3a PT6( .A(line2), .B(line3), .C(line4), .Y(line6) );
   XOR2a PT7( .A(line5), .B(line6), .Y(ParOut) );
   
endmodule // ParityTree10bit

/********************************************/

module ParityTree9bit( Inbus, ParOut );

   input [8:0] Inbus;
   output      ParOut;

   XOR2a PT1( .A(Inbus[5]), .B(Inbus[6]), .Y(line1) ),
   PT2( .A(Inbus[7]), .B(Inbus[8]), .Y(line2) ),
   PT3( .A(Inbus[1]), .B(Inbus[2]), .Y(line3) ),
   PT4( .A(Inbus[3]), .B(Inbus[4]), .Y(line4) );
   XOR2a PT5( .A(line1), .B(line2), .Y(line5) );
   XOR3a PT6( .A(line3), .B(Inbus[0]), .C(line4), .Y(line6) );
   XOR2a PT7( .A(line5), .B(line6), .Y(ParOut) );
   
endmodule // ParityTree9bit

/********************************************/

module Invert4( Inbus, Outbus );

   input [3:0]	Inbus;
   output [3:0]	Outbus;

   inv Inv4_0( .A(Inbus[0]), .Y(Outbus[0]) ),
   Inv4_1( .A(Inbus[1]), .Y(Outbus[1]) ),
   Inv4_2( .A(Inbus[2]), .Y(Outbus[2]) ),
   Inv4_3( .A(Inbus[3]), .Y(Outbus[3]) );
   
endmodule // Invert4

/********************************************/

module Invert9( Inbus, Outbus );

   input [8:0]	Inbus;
   output [8:0]	Outbus;

   Invert4 Inv9_0( Inbus[3:0], Outbus[3:0] ),
   Inv9_1( Inbus[7:4], Outbus[7:4] );
   inv     Inv9_2( .A(Inbus[8]), .Y(Outbus[8]) );
   
endmodule // Invert9

/********************************************/

module Buffer7( Inbus, Outbus );

   input [6:0]	Inbus;
   output [6:0]	Outbus;
   
   buffer B7_0( .A(Inbus[0]), .Y(Outbus[0]) ),
   B7_1( .A(Inbus[1]), .Y(Outbus[1]) ),
   B7_2( .A(Inbus[2]), .Y(Outbus[2]) ),
   B7_3( .A(Inbus[3]), .Y(Outbus[3]) ),
   B7_4( .A(Inbus[4]), .Y(Outbus[4]) ),
   B7_5( .A(Inbus[5]), .Y(Outbus[5]) ),
   B7_6( .A(Inbus[6]), .Y(Outbus[6]) );
   
endmodule // Buffer7

/********************************************/

module XOR2a6bit( In1bus, In2bus, Outbus );
   
   input [5:0]	In1bus, In2bus;
   output [5:0]	Outbus;
   
   XOR2a X2a6_0( .A(In1bus[0]), .B(In2bus[0]), .Y(Outbus[0]) ),
   X2a6_1( .A(In1bus[1]), .B(In2bus[1]), .Y(Outbus[1]) ),
   X2a6_2( .A(In1bus[2]), .B(In2bus[2]), .Y(Outbus[2]) ),
   X2a6_3( .A(In1bus[3]), .B(In2bus[3]), .Y(Outbus[3]) ),
   X2a6_4( .A(In1bus[4]), .B(In2bus[4]), .Y(Outbus[4]) ),
   X2a6_5( .A(In1bus[5]), .B(In2bus[5]), .Y(Outbus[5]) );
   
endmodule // XOR2a6bit

/********************************************/

module Mux4_1( In0, In1, In2, In3, ContHi, ContLo, Out );

   input  In0, In1, In2, In3, ContHi, ContLo;
   output Out;

   inv  Mux4_0( .A(ContLo), .Y(Not_ContLo) ),
   Mux4_1( .A(ContHi), .Y(Not_ContHi) );
   and3 Mux4_2( .A(In0), .B(Not_ContHi), .C(Not_ContLo), .Y(line2) ),
   Mux4_3( .A(In1), .B(Not_ContHi), .C(ContLo), .Y(line3) ),
   Mux4_4( .A(In2), .B(ContHi), .C(Not_ContLo), .Y(line4) ),
   Mux4_5( .A(In3), .B(ContHi), .C(ContLo), .Y(line5) );
   or4 Mux4_6( .A(line2), .B(line3), .C(line4), .D(line5), .Y(Out) );
   
endmodule // Mux4_1

/********************************************/

module Mux2_1( In0, In1, ContIn, Out );

   input  In0, In1, ContIn;
   output Out;

   inv  Mux2_0( .A(ContIn), .Y(Not_ContIn) );
   and2 Mux2_1( .A(In0), .B(Not_ContIn), .Y(line1) ),
   Mux2_2( .A(In1), .B(ContIn), .Y(line2) );
   or2 Mux2_3( .A(line1), .B(line2), .Y(Out) );
   
endmodule // Mux2_1

/********************************************/

module Mux9bit_4_1( In1bus, In2bus, In3bus, In4bus,
		    ContHi, ContLo, Outbus );
   
   input [8:0]	In1bus, In2bus, In3bus, In4bus;
   input	ContHi, ContLo;
   output [8:0]	Outbus;
   
   Mux4bit_4_1 Mx9_0( In1bus[3:0], In2bus[3:0], In3bus[3:0], In4bus[3:0],
		      ContHi, ContLo, Outbus[3:0] ),
   Mx9_1( In1bus[7:4], In2bus[7:4], In3bus[7:4], In4bus[7:4],
	  ContHi, ContLo, Outbus[7:4] );
   Mux4_1      Mx9_2( In1bus[8], In2bus[8], In3bus[8], In4bus[8],
		      ContHi, ContLo, Outbus[8] );

endmodule // Mux9bit_4_1

/********************************************/

module Mux4bit_4_1( In1bus, In2bus, In3bus, In4bus,
		    ContHi, ContLo, Outbus );
   
   input [3:0]	In1bus, In2bus, In3bus, In4bus;
   input	ContHi, ContLo;
   output [3:0]	Outbus;
   
   Mux4_1 Mx4_0( In1bus[0], In2bus[0], In3bus[0], In4bus[0],
		 ContHi, ContLo, Outbus[0] ),
   Mx4_1( In1bus[1], In2bus[1], In3bus[1], In4bus[1],
	  ContHi, ContLo, Outbus[1] ),
   Mx4_2( In1bus[2], In2bus[2], In3bus[2], In4bus[2],
	  ContHi, ContLo, Outbus[2] ),
   Mx4_3( In1bus[3], In2bus[3], In3bus[3], In4bus[3],
	  ContHi, ContLo, Outbus[3] );

endmodule // Mux4bit_4_1

/******************************************************/

module Mask_And4bit( Inbus, Mask, Outbus );

   input [3:0]	Inbus;
   input	Mask;
   output [3:0]	Outbus;

   and2 Ma0( .A(Inbus[0]), .B(Mask), .Y(Outbus[0]) ),
   Ma1( .A(Inbus[1]), .B(Mask), .Y(Outbus[1]) ),
   Ma2( .A(Inbus[2]), .B(Mask), .Y(Outbus[2]) ),
   Ma3( .A(Inbus[3]), .B(Mask), .Y(Outbus[3]) );
   
endmodule // AND4bit

/******************************************************/

module AND_OR2( O, P, Q, YY);

   input  O, P, Q;
   output YY;
   
   and2 Ao2_0( .A(P), .B(Q), .Y(line0) );
   or2  Ao2_1( .A(O), .B(line0), .Y(YY) );

endmodule // AND_OR2

/******************************************************/

module AND_OR3a( O, P, Q, R, S, YY);

   input  O, P, Q, R, S;
   output YY;
   
   and2 Ao3a_0( .A(P), .B(Q), .Y(line0) );
   and3 Ao3a_1( .A(P), .B(R), .C(S), .Y(line1) );
   or3  Ao3a_2( .A(O), .B(line0), .C(line1), .Y(YY) );

endmodule // AND_OR3a

/******************************************************/

module AND_OR3b( O, P, Q, R, YY);

   input  O, P, Q, R;
   output YY;
   
   and2 Ao3a_0( .A(P), .B(Q), .Y(line0) );
   and2 Ao3a_1( .A(P), .B(R), .Y(line1) );
   or3  Ao3a_2( .A(O), .B(line0), .C(line1), .Y(YY) );

endmodule // AND_OR3b

/******************************************************/

module AND_OR4a( O, P, Q, R, S, T, U, YY);

   input  O, P, Q, R, S, T, U;
   output YY;
   
   and2 Ao4a_0( .A(P), .B(Q), .Y(line0) );
   and3 Ao4a_1( .A(P), .B(R), .C(S), .Y(line1) );
   and4 Ao4a_2( .A(P), .B(R), .C(T), .D(U), .Y(line2) );
   or4  Ao4a_3( .A(O), .B(line0), .C(line1), .D(line2), .Y(YY) );

endmodule // AND_OR4a

/******************************************************/

module AND_OR4b( O, P, Q, R, S, T, YY);

   input  O, P, Q, R, S, T;
   output YY;
   
   and2 Ao4a_0( .A(P), .B(Q), .Y(line0) );
   and3 Ao4a_1( .A(P), .B(R), .C(S), .Y(line1) );
   and3 Ao4a_2( .A(P), .B(R), .C(T), .Y(line2) );
   or4  Ao4a_3( .A(O), .B(line0), .C(line1), .D(line2), .Y(YY) );

endmodule // AND_OR4a

/******************************************************/

module AND_OR5a( O, P, Q, R, S, T, U, V, W, YY);

   input  O, P, Q, R, S, T, U, V, W;
   output YY;
   
   and2 Ao5a_0( .A(P), .B(Q), .Y(line0) );
   and3 Ao5a_1( .A(P), .B(R), .C(S), .Y(line1) );
   and4 Ao5a_2( .A(P), .B(R), .C(T), .D(U), .Y(line2) );
   and5 Ao5a_3( .A(P), .B(R), .C(T), .D(V), .E(W), .Y(line3) );
   or5  Ao5a_4( .A(O), .B(line0), .C(line1), .D(line2), .E(line3), .Y(YY) );

endmodule // AND_OR5a

/******************************************************/

module AND_OR5b( O, P, Q, R, S, T, U, V, YY);

   input  O, P, Q, R, S, T, U, V;
   output YY;
   
   and2 Ao5a_0( .A(P), .B(Q), .Y(line0) );
   and3 Ao5a_1( .A(P), .B(R), .C(S), .Y(line1) );
   and4 Ao5a_2( .A(P), .B(R), .C(T), .D(U), .Y(line2) );
   and4 Ao5a_3( .A(P), .B(R), .C(T), .D(V), .Y(line3) );
   or5  Ao5a_4( .A(O), .B(line0), .C(line1), .D(line2), .E(line3), .Y(YY) );

endmodule // AND_OR5b

/******************************************************/

module AND_OR6a( O, P, Q, R, S, T, U, V, W, X, Y, YY);

   input  O, P, Q, R, S, T, U, V, W, X, Y;
   output YY;
   
   and2 Ao6a_0( .A(P), .B(Q), .Y(line0) );
   and3 Ao6a_1( .A(P), .B(R), .C(S), .Y(line1) );
   and4 Ao6a_2( .A(P), .B(R), .C(T), .D(U), .Y(line2) );
   and5 Ao6a_3( .A(P), .B(R), .C(T), .D(V), .E(W), .Y(line3) );
   and6 Ao6a_4( .A(P), .B(R), .C(T), .D(V), .E(X), .F(Y), .Y(line4) );
   or6  Ao6a_5( .A(O), .B(line0), .C(line1), .D(line2), .E(line3),
		.F(line4), .Y(YY) );

endmodule // AND_OR6a

/******************************************************/

module AND_OR6b( O, P, Q, R, S, T, U, V, W, X, YY);

   input  O, P, Q, R, S, T, U, V, W, X;
   output YY;
   
   and2 Ao6a_0( .A(P), .B(Q), .Y(line0) );
   and3 Ao6a_1( .A(P), .B(R), .C(S), .Y(line1) );
   and4 Ao6a_2( .A(P), .B(R), .C(T), .D(U), .Y(line2) );
   and5 Ao6a_3( .A(P), .B(R), .C(T), .D(V), .E(W), .Y(line3) );
   and5 Ao6a_4( .A(P), .B(R), .C(T), .D(V), .E(X), .Y(line4) );
   or6  Ao6a_5( .A(O), .B(line0), .C(line1), .D(line2), .E(line3),
		.F(line4), .Y(YY) );

endmodule // AND_OR6b

/******************************************************/

module XOR2a ( A, B, Y );

   input  A, B;
   output Y;

   inv   Xo0( .A(A), .Y(NotA) ),
   Xo1( .A(B), .Y(NotB) );
   
   nand2 Xo2( .A(NotA), .B(B), .Y(line2) ),
   Xo3( .A(NotB), .B(A), .Y(line3) ),
   Xo4( .A(line2), .B(line3), .Y(Y) );
   
endmodule // XOR2a

/******************************************************/

module XOR2b ( A, B, Y );

   input  A, B;
   output Y;

   nand2 Xo0( .A(A), .B(B), .Y(NotAB) );
   and2  Xo1( .A(A), .B(NotAB), .Y(line1) ),
   Xo2( .A(NotAB), .B(B), .Y(line2) );
   or2   Xo3( .A(line1), .B(line2), .Y(Y) );
   
endmodule // XOR2b

/********************************************/

module XOR3a( A, B, C, Y);

   input  A, B, C;
   output Y;
   
   inv   Xo3_0( .A(A), .Y(NotA) ),
   Xo3_1( .A(B), .Y(NotB) ),
   Xo3_2( .A(C), .Y(NotC) );
   and3  Xo3_3( .A(NotA), .B(NotB), .C(C), .Y(line3) ),
   Xo3_4( .A(NotA), .B(B), .C(NotC), .Y(line4) ),
   Xo3_5( .A(A), .B(NotB), .C(NotC), .Y(line5) ),
   Xo3_6( .A(A), .B(B), .C(C), .Y(line6) );
   nor2  Xo3_7( .A(line3), .B(line4), .Y(line7) ),
   Xo3_8( .A(line5), .B(line6), .Y(line8) );
   nand2 Xo3_9( .A(line7), .B(line8), .Y(Y) );

endmodule // XOR3a

/********************************************/

module NOR9(In, Out);

   input [8:0] In;
   output      Out;

   nor9 n9(.A(In[0]), .B(In[1]), .C(In[2]), .D(In[3]), .E(In[4]), .F(In[5]),
	   .G(In[6]), .H(In[7]), .I(In[8]), .Y(Out) );

endmodule // NOR9
