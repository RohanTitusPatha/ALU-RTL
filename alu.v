module alu (input wire [3:0] a, 
           input wire [3:0] b, 
           input wire [3:0] opcode,
           output reg  [7:0] out);
  
  localparam AND = 4'b0000;
  localparam OR = 4'b0001;
  localparam XOR = 4'b0010;
  localparam ADD = 4'b0011;
  localparam SUB = 4'b0100;
  localparam MUL = 4'b0101;
  localparam LSHIFT = 4'b0110;
  localparam RSHIFT = 4'b0111;
  localparam LESS = 4'b1000;
  localparam GREATER = 4'b1001;
  localparam EQUAL = 4'b1010;
  localparam NOT = 4'b1011;
  localparam L_AND = 4'b1100;
  localparam L_OR = 4'b1101;

 always @(*) begin
        case (opcode)
          AND : out = a & b;
          OR : out = a | b;
          XOR : out = a ^ b;
          ADD : out = a + b;
          SUB : out = a - b;
          MUL : out = a * b;
          LSHIFT : out = a << 1;
          RSHIFT : out = a >> 1;
          LESS : out = (a < b);
          GREATER : out = (a > b);
          EQUAL : out = (a == b);
          NOT : out = !a;
          L_AND : out = (a && b);
          L_OR : out = (a || b);
          default : out = 0;
		endcase
 end
endmodule
