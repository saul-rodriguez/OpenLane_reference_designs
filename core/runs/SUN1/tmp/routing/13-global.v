module core (clk,
    enable,
    out2,
    reset,
    vccd1,
    vssd1,
    out1);
 input clk;
 input enable;
 output out2;
 input reset;
 input vccd1;
 input vssd1;
 output [3:0] out1;

 wire \out_c2[0] ;
 wire \out_c2[1] ;
 wire \out_c2[2] ;

 counter c1 (.clk(clk),
    .enable(enable),
    .reset(reset),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .out({out1[3],
    out1[2],
    out1[1],
    out1[0]}));
 counter c2 (.clk(clk),
    .enable(enable),
    .reset(reset),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .out({out2,
    \out_c2[2] ,
    \out_c2[1] ,
    \out_c2[0] }));
endmodule
