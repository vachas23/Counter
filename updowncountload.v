module updowncountload(clk,reset,ud,load,in,count);
    input [3:0]in;
    input ud;
    input clk,reset,load;
    output reg [3:0]count;
   always@(posedge clk)
   begin
   if(!reset)
   count<=0;
   else
   begin
       casex({ud,load})
           2'b00:count<=count-1;
           2'bx1:count<=in;
           2'b10:count<=count+1;
   endcase
   end
   end
   endmodule