//8 deep shift register
`timescale 1ns/1ns
module shift_reg(
    input logic clk,
    input logic [7:0] data_in,
    output logic [7:0] data_out
);

logic [7:0] sreg [0:7];

assign sreg[0] = data_in;
assign data_out = sreg[7];

always @(posedge clk)
    for(int i=1;i<8;i++)
        sreg[i] <= sreg[i-1]; 

endmodule