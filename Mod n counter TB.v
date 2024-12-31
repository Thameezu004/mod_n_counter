module mod10_tb();
reg clk;
reg rst;
wire [2:0] cout;
mod10 dut (clk,rst,cout);
initial
begin
clk = 0;
forever #5 clk = ~clk;
end
initial
begin
$monitor("%0d\t%b", $time, cout);
rst = 1;
#10;
rst = 0;
#90;
$stop;
end
endmodule