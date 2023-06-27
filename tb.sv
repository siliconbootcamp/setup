`timescale 1ns/1ns
//Sample test bench
module tb;

//By default bit types are '0
bit clk;
bit [7:0]   data_in;
logic [7:0] data_out;

always #5 clk = ~clk;

default clocking cb @(posedge clk);
endclocking

shift_reg dut(.*);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    `ifdef GATES
     ##10;
     `endif

    $monitor("%t: data_in=%d, data_out=%d",$stime,data_in,data_out);
    
    repeat(30) begin
        ##1 data_in <= data_in + 8'b1;
    end

    $finish;
end
  
endmodule