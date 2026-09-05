# 4-bit ALU — Verilog RTL

A combinational 4-bit Arithmetic Logic Unit implemented in synthesizable Verilog.

The ALU accepts two 4-bit operands and a 4-bit opcode and produces an 8-bit output.

## Operations

| Opcode | Operation |
|--------|-----------|
| `0000` | AND |
| `0001` | OR |
| `0010` | XOR |
| `0011` | ADD |
| `0100` | SUB |
| `0101` | MUL |
| `0110` | Left Shift |
| `0111` | Right Shift |
| `1000` | Less Than |
| `1001` | Greater Than |
| `1010` | Equal |
| `1011` | NOT |
| `1100` | Logical AND |
| `1101` | Logical OR |

## Project Structure

```text
ALU-RTL/
├── alu.v
├── alu_tb.v
└── README.md

## Simulation

Using Icarus Verilog:

```bash
iverilog -o alu_sim alu.v alu_tb.v
vvp alu_sim
