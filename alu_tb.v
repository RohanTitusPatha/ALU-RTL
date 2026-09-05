module alu_tb;
 
    reg  [3:0] a, b, opcode;
    wire [7:0] out;
 
    alu dut (
      .a(a), .b(b), .opcode(opcode),
        .out(out)
    );
 
    initial begin
        a = 6; b = 10;
 
        opcode = 4'b0000; 
      #10 $display("a=%d b=%d opcode=%b out=%b", a, b, opcode, out);

        opcode = 4'b0001; 
      #10 $display("a=%d b=%d opcode=%b out=%b", a, b, opcode, out);
        opcode = 4'b0010; 
      #10 $display("a=%d b=%d opcode=%b out=%b", a, b, opcode, out);
        opcode = 4'b0011; 
      #10 $display("a=%d b=%d opcode=%b out=%b", a, b, opcode, out);
        
        a = 8; b = 8;
        opcode = 4'b0000; 
      #10 $display("a=%d b=%d opcode=%b out=%b", a, b, opcode, out);
        opcode = 4'b0001; 
      #10 $display("a=%d b=%d opcode=%b out=%b", a, b, opcode, out);
        
        $finish;
    end
 
endmodule
