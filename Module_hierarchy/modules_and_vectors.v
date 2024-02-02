module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]q0,q1,q2;
    my_dff8 instance0(clk,d,q0);
    my_dff8 instance1(clk,q0,q1);
    my_dff8 instance2(clk,q1,q2);
    always@(*)
        begin
            case(sel)
                2'b 00:q<=d;
                2'b 01:q<=q0;
                2'b 10:q<=q1;
                2'b 11:q<=q2;
            endcase
        end
                

endmodule
