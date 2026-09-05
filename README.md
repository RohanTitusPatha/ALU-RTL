# 4-bit ALU — Verilog RTL

A combinational 4-bit Arithmetic Logic Unit implemented in Verilog, with two different RTL implementations:

* **Case-based RTL** using `always @(*)`
* **Generate-based RTL** using `generate` and `genvar`

Both implementations perform the same set of 14 operations.

## Operations

| Opcode | Operation    |
| ------ | ------------ |
| `0000` | AND          |
| `0001` | OR           |
| `0010` | XOR          |
| `0011` | ADD          |
| `0100` | SUB          |
| `0101` | MUL          |
| `0110` | Left Shift   |
| `0111` | Right Shift  |
| `1000` | Less Than    |
| `1001` | Greater Than |
| `1010` | Equal        |
| `1011` | NOT          |
| `1100` | Logical AND  |
| `1101` | Logical OR   |

## Project Structure

```text
ALU-RTL/
├── alu.v
├── alu_generate.v
├── alu_tb.v
└── README.md
```

## RTL Implementations

### 1. Case-Based Implementation

`alu.v`

Uses a combinational `always @(*)` block with a `case` statement to select the required operation.

### 2. Generate-Based Implementation

`alu_generate.v`

Uses:

* `genvar`
* `generate`
* Generate-time `if / else if`
* Intermediate result wires
* Opcode-based selection

This implementation demonstrates how repetitive hardware structures can be created during elaboration using Verilog generate constructs.

## Simulation

Using Icarus Verilog:

```bash
iverilog -o alu_sim alu.v alu_tb.v
vvp alu_sim
```

For the generate-based implementation:

```bash
iverilog -o alu_sim alu_generate.v alu_tb.v
vvp alu_sim
```

## Design Specifications

* **Inputs:** `a[3:0]`, `b[3:0]`
* **Opcode:** `opcode[3:0]`
* **Output:** `out[7:0]`
* **Operations:** 14
* **Design Type:** Combinational
* **HDL:** Verilog

## Learning Focus

This project demonstrates:

* Combinational RTL design
* `always @(*)` and `case`
* Continuous assignments
* `generate` blocks
* `genvar`
* Generate-time conditional logic
* RTL simulation and testbench development
