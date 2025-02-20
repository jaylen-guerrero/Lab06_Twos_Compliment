module twos_compliment(

    input [7:0]A,
    output [7:0]Y

);
    wire [7:0] carry;
    wire [7:0] A_inverse;

    assign A_inverse[0] = ~A[0];
    assign A_inverse[1] = ~A[1];
    assign A_inverse[2] = ~A[2];
    assign A_inverse[3] = ~A[3];
    assign A_inverse[4] = ~A[4];
    assign A_inverse[5] = ~A[5];
    assign A_inverse[6] = ~A[6];
    assign A_inverse[7] = ~A[7];
    

    // assign A[0] = ~A[0];
    // assign A[1] = ~A[1];
    // assign A[2] = ~A[2];
    // assign A[3] = ~A[3];
    // assign A[4] = ~A[4];
    // assign A[5] = ~A[5];
    // assign A[6] = ~A[6];
    // assign A[7] = ~A[7];
    
    
    full_adder one(
    .A(A_inverse[0]),
    .B(1'b1),
    .Cin(1'b0),
    .Y(Y[0]),
    .Cout(carry[0])
    );
    
    full_adder two(
    .A(A_inverse[1]),
    .B(1'b0),
    .Cin(carry[0]),
    .Y(Y[1]),
    .Cout(carry[1])
    );
    
    full_adder three(
    .A(A_inverse[2]),
    .B(1'b0),
    .Cin(carry[1]),
    .Y(Y[2]),
    .Cout(carry[2])
    );
    
    full_adder four(
    .A(A_inverse[3]),
    .B(1'b0),
    .Cin(carry[2]),
    .Y(Y[3]),
    .Cout(carry[3])
    );
    
    full_adder five(
    .A(A_inverse[4]),
    .B(1'b0),
    .Cin(carry[3]),
    .Y(Y[4]),
    .Cout(carry[4])
    );
    
    full_adder six(
    .A(A_inverse[5]),
    .B(1'b0),
    .Cin(carry[4]),
    .Y(Y[5]),
    .Cout(carry[5])
    );
    
    full_adder seven(
    .A(A_inverse[6]),
    .B(1'b0),
    .Cin(carry[5]),
    .Y(Y[6]),
    .Cout(carry[6])
    );
    
    full_adder eight(
    .A(A_inverse[7]),
    .B(1'b0),
    .Cin(carry[6]),
    .Y(Y[7])
    );
    
    
    
    endmodule
