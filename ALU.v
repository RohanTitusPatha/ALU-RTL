module ALU (
    input  wire [3:0] a,
    input  wire [3:0] b,
    input  wire [3:0] opcode,
    output wire [7:0] out
);

    wire [7:0] result [0:13];

    genvar i;

    generate
        for (i = 0; i < 14; i = i + 1) begin : ALU_OP

            if (i == 0)
                assign result[i] = a & b;

            else if (i == 1)
                assign result[i] = a | b;

            else if (i == 2)
                assign result[i] = a ^ b;

            else if (i == 3)
                assign result[i] = a + b;

            else if (i == 4)
                assign result[i] = a - b;

            else if (i == 5)
                assign result[i] = a * b;

            else if (i == 6)
                assign result[i] = a << 1;

            else if (i == 7)
                assign result[i] = a >> 1;

            else if (i == 8)
                assign result[i] = (a < b);

            else if (i == 9)
                assign result[i] = (a > b);

            else if (i == 10)
                assign result[i] = (a == b);

            else if (i == 11)
                assign result[i] = !a;

            else if (i == 12)
                assign result[i] = a && b;

            else if (i == 13)
                assign result[i] = a || b;

        end
    endgenerate

    assign out = result[opcode];

endmodule
