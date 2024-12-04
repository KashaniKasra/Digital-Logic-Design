## Project Overview

This project focuses on **Basic Switch and Gate Structures in Verilog** as part of an assignment for the **Digital Logic Design** course. The goal is to design and implement a circuit that counts the number of 1's on its inputs, using various levels of abstraction in Verilog, including transistor-level descriptions, gate primitives, and behavioral descriptions with assign statements.

## Contents

- `Instruction.pdf`: Detailed instructions for the assignment.
- `Report.doc`: Documentation covering design, implementation, and results.

## Key Components

### 1. 3-input One’s Counter (OC) Circuit
This circuit has three inputs (a, b, c) and outputs a two-bit number representing the number of 1’s in the inputs.
   - It uses a minimum number of nMOS and pMOS transistors and requires optimizing the design by factoring out variables using Boolean laws.

### 2. Verilog Description
The 3-input OC circuit is described at the transistor level using Verilog with specified delay values for nMOS and pMOS transistors. A testbench is generated to validate the design and explain any `X` or `Z` values.

### 3. Gate Primitive Description
The same circuit is described using Verilog gate primitives with delays adjusted to match the transistor-level design. A testbench compares the performance of the transistor-level and gate-level designs.

### 4. Behavioral Description with Assign Statements
The circuit is described using two `assign` statements, with delays adjusted to match the gate-level design. A testbench runs all three versions (transistor-level, gate-level, and assign-statement-based) for comparison.

### 5. Larger One's Counter Circuits
   - A 7-input OC circuit is built using structural Verilog by combining multiple 3-input OC circuits.
   - A 15-input OC circuit is designed using the 7-input and 3-input OC circuits, and its worst-case delay is calculated.

## Deliverables
- Circuit diagrams for the transistor-level and gate-level designs.
- Hand-calculated delay values for each design.
- Verilog descriptions for all circuit versions.
- Simulation waveforms comparing the performance of different designs.
- A complete report with hand calculations, simulation results, and a comparison of the three designs.

This project is developed as part of the **Digital Logic Design** course at the University of Tehran.