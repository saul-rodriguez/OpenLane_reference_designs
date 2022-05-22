/* Generated by Yosys 0.12+45 (git sha1 UNKNOWN, gcc 8.3.1 -fPIC -Os) */

module core(enable, clk, reset, out1, out2);
  input clk;
  input enable;
  output [3:0] out1;
  output out2;
  wire \out_c2[0] ;
  wire \out_c2[1] ;
  wire \out_c2[2] ;
  wire \out_c2[3] ;
  input reset;
  counter c1 (
    .clk(clk),
    .enable(enable),
    .out(out1),
    .reset(reset)
  );
  counter c2 (
    .clk(clk),
    .enable(enable),
    .out({ out2, \out_c2[2] , \out_c2[1] , \out_c2[0]  }),
    .reset(reset)
  );
  assign \out_c2[3]  = out2;
endmodule