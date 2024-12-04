## Project Overview

This project involves the **Combinational RTL Design, Simulation, and Synthesis** of a 16-bit Arithmetic Logic Unit (ALU). The ALU performs various operations such as addition, subtraction, bitwise operations, and others, based on a 3-bit opcode. The project focuses on both behavioral and hardware-oriented descriptions of the ALU, covering simulation, synthesis, and comparison of results.

## Contents

- `Instruction.pdf`: Detailed instructions for the assignment.
- `Report.doc`: Documentation covering design, implementation, and results.

## Key Components

### 1. 16-bit ALU
The ALU accepts two 16-bit signed inputs (`inA` and `inB`), a carry input (`inC`), and a 3-bit opcode (`opc`). It outputs a 16-bit result (`outW`) and flag outputs for zero (`zer`) and negative (`neg`).
   - The ALU supports multiple operations including 2's complement, addition, bitwise AND/OR, and more.

### 2. Behavioral ALU Design
A behavioral description of the ALU is written in SystemVerilog using an `always` block and `case` statements for the different opcodes.
   - Pre-synthesis and post-synthesis simulations are conducted, and the results are compared.

### 3. Hardware-Oriented ALU Design
The ALU is designed manually at the structural level using hardware components shared across multiple operations.
   - Similar to the behavioral design, the hardware-oriented design is simulated, synthesized, and compared.

### ALU Operations (Opcode):

| Opcode | Function                          |
|--------|-----------------------------------|
| 000    | 2's Complement of `inA`           |
| 001    | `inA + 1`                         |
| 010    | `inA + inB + inC`                 |
| 011    | `inA + (inB × 0.5)`               |
| 100    | Bitwise AND between `inA` and `inB`|
| 101    | Bitwise OR between `inA` and `inB` |
| 110    | Concatenate `inA[7:0]` and `inB[7:0]`|
| 111    | No operation                      |

## Deliverables
- **Behavioral Description**: Simulation results, synthesis reports, and post-synthesis comparison.
- **Hardware-Oriented Description**: Simulation results, synthesis reports, and comparison with the behavioral design in terms of hardware utilization and timing.
- A final report summarizing the synthesis and simulation results, including Yosys reports, timing diagrams, and screenshots.

This project is part of the **Digital Logic Design** course at the University of Tehran.