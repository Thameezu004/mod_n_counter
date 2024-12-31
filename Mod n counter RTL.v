RTL CODE:
module modN(clk,rst,cout);
input clk,rst;
parameter n=3;
output [n-1:0]cout;
reg [2:0]cin;
always @(posedge clk or posedge rst)
begin
if(rst)
cin=3'b000;
else if(cin==3'b111)
cin=3'b000;
else
cin=cin+1;
end
assign cout=cin;
endmodule