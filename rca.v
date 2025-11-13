module rca (input  [3:0] a,input  [3:0] b,input cin,output reg [3:0] sum,output reg cout
);
integer i;
reg c;
task full_adder;
    input a, b, cin;
    output s, cout;
    begin
        s    = a ^ b ^ cin;
        cout = (a & b) | (b & cin) | (a & cin);
    end
endtask
always @(*) begin
c = cin;
for (i = 0; i < 4; i = i + 1) begin
    full_adder(a[i], b[i], c, sum[i], c);
end
cout = c;
end
endmodule