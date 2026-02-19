//fulladder
module fulladder ( input a,b, c_in,
                   output sum, c_out);

assign sum = a ^ b^ c_in ;
assign c_out = (a&b)  | (b & c_in) | (a & c_in) ;

endmodule 



//RCA with Fulladder;

module rca_4bit ( 
                  input [ 3: 0 ] a ,b, 
                  input c_in, 
                  output [3:0] sum, 
                  output c_out
                );
wire c1, c2, c3;
//instantiation of above module "fulladder" . With instance name.
fulladder dut1 ( a[0], b[0], c_in, sum[0], c1 );
fulladder dut2 ( a[1], b[1], c1, sum[1], c2 );
fulladder dut3 ( a[2], b[2], c2, sum[2], c3 );
fulladder dut4 ( a[3], b[3], c3, sum[3], c_out);

endmodule






