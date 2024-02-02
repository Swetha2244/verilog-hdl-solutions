module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c1,s1;
    add16 instance1(a,b,s1,c1);
    add16 instance2(a,b,c1,s1);
    assign sum=a+b;
endmodule
