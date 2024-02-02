module top_module ( input clk, input d, output q );
    wire q0,q1;
    my_dff instance0(clk,d,q0);
    my_dff instance1(clk,q0,q1);
    my_dff instance2(clk,q1,q);
endmodule
