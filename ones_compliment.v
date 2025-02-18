module ones_compliment(
    input [3:0]A, 
    input [3:0]B,
    output [3:0]Y
    
);

wire [3:0] real_carry;
wire [3:0] temp_sums;
wire [3:0] carries;


full_adder zero(
    .A(A[0]),
    .B(B[0]),
    .Cin(1'b0),
    .Y(temp_sums[0]),
    .Cout(carries[0])
    
);

full_adder one(
    .A(A[1]),
    .B(B[1]),
    .Y(temp_sums[1]),
    .Cin(carries[0]),
    .Cout(carries[1])

);

full_adder two(

    .A(A[2]),
    .B(B[2]),
    .Y(temp_sums[2]),
    .Cin(carries[1]),
    .Cout(carries[2])


);

full_adder three(
    .A(A[3]),
    .B(B[3]),
    .Y(temp_sums[3]),
    .Cin(carries[2]),
    .Cout(carries[3])

);

full_adder realZero(
    .A(temp_sums[0]),
    .B(1'b0),
    .Y(Y[0]),
    .Cin(carries[3]),
    .Cout(real_carry[0])

);

full_adder realOne(
    .A(temp_sums[1]),
    .B(1'b0),
    .Cin(real_carry[0]),
    .Y(Y[1]),
    .Cout(real_carry[1])

);

full_adder realTwo(
    .A(temp_sums[2]),
    .B(1'b0),
    .Cin(real_carry[1]),
    .Y(Y[2]),
    .Cout(real_carry[2])
);

full_adder realThree(
    .A(temp_sums[3]),
    .B(1'b0),
    .Cin(real_carry[2]),
    .Y(Y[3])
);

endmodule





