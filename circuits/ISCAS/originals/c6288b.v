/****************************************************************************
 *                                                                          *
 *  VERILOG BEHAVIORAL DESCRIPTION OF THE ISCAS-85 BENCHMARK CIRCUIT c6288  *
 *                                                                          *
 *  Function: 16 x 16 Multiplier                                            *
 *                                                                          *
 *  Written by: Mark C. Hansen                                              *
 *                                                                          *
 *  Last modified: Nov 12, 1997                                             *
 *                                                                          *
 ****************************************************************************/

module Circuit6288h (in256, in239, in222, in205, in188, in171, in154, in137, 
                 in120, in103, in86, in69, in52, in35, in18, in1,
                 in528, in511, in494, in477, in460, in443, in426, in409,
                 in392, in375, in358, in341, in324, in307, in290, in273,
                 out6287, out6288, out6280, out6270,
                 out6260, out6250, out6240, out6230, 
                 out6220, out6210, out6200, out6190, 
                 out6180, out6170, out6160, out6150, 
                 out6123, out5971, out5672, out5308, 
                 out4946, out4591, out4241, out3895,
                 out3552, out3211, out2877, out2548,
                 out2223, out1901, out1581, out545);

  input          in256, in239, in222, in205, in188, in171, in154, in137, 
                 in120, in103, in86, in69, in52, in35, in18, in1,
                 in528, in511, in494, in477, in460, in443, in426, in409,
                 in392, in375, in358, in341, in324, in307, in290, in273;
  output         out6287, out6288, out6280, out6270,
                 out6260, out6250, out6240, out6230, 
                 out6220, out6210, out6200, out6190, 
                 out6180, out6170, out6160, out6150, 
                 out6123, out5971, out5672, out5308, 
                 out4946, out4591, out4241, out3895,
                 out3552, out3211, out2877, out2548,
                 out2223, out1901, out1581, out545;

  wire [15:0]   A, B;
  wire [31:0]   P;

  assign
      A[15:0] = {in256, in239, in222, in205, in188, in171, in154, in137, 
                 in120, in103, in86, in69, in52, in35, in18, in1},
      B[15:0] = {in528, in511, in494, in477, in460, in443, in426, in409,
                 in392, in375, in358, in341, in324, in307, in290, in273},
      {out6287, out6288, out6280, out6270,
       out6260, out6250, out6240, out6230, 
       out6220, out6210, out6200, out6190, 
       out6180, out6170, out6160, out6150, 
       out6123, out5971, out5672, out5308, 
       out4946, out4591, out4241, out3895,
       out3552, out3211, out2877, out2548,
       out2223, out1901, out1581, out545} = P[31:0];
	
  TopLevel6288b Ckt6288b (A, B, P);

endmodule /* Circuit6288b */

/*************************************************************************/

module TopLevel6288b (A, B, P);

  input[15:0]	A, B;
  output[31:0]	P;

  assign P = A*B;

endmodule /* TopLevel6288b */

/*************************************************************************/

