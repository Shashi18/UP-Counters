module uptest();
reg en;
reg clk;
reg reset;
wire [7:0]out;

initial begin
reset=0;
clk=0;
en=1;
#80 en=0;
end

up call(out,en,clk,reset);
always #2 clk=!clk;
endmodule
