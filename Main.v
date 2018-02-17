module up(out,en,clk,reset);
    output reg[7:0] out;
    input en, clk, reset;
initial
out = 0;
always @(posedge clk)begin
if (reset) begin //if reset is true
  out <= 8'b0 ;
end 
else if (en==1 && out<15)  //if enable is high // because 1111 is 15
  out <= out + 1;
else
 out <= 0;
end

endmodule
