## Project Overview

This project focuses on **Latches and Flip-Flops** as part of a Digital Logic Design course assignment. The goal is to design and simulate SR latches and D flip-flops using Verilog. The assignment covers both basic and enhanced flip-flop designs, exploring timing constraints such as setup and hold times.

## Contents

- `Instruction.pdf`: Detailed instructions for the assignment.
- `Report.doc`: Documentation covering design, implementation, and results.

## Key Components

### 1. SR-Latch with Active Low Inputs
A cross-coupled NAND gate circuit to implement an SR-latch.
   - The Verilog description uses NAND primitives, with delays based on NMOS (4ns) and PMOS (6ns) transistors.
   - Simulation examines the circuit’s behavior, especially when both inputs (S and R) are active simultaneously, causing a loss of memory.

### 2. D Flip-Flop
This D flip-flop is constructed using three SR-latches.
   - Simulations examine edge-triggering behavior, setup time (`tsetup`), and hold time (`thold`). Delays are applied to observe the output’s response after a clock edge.
   - The circuit is also tested for violations of setup and hold times.

### 3. D Flip-Flop with PRE and CLR
An enhanced version of the D flip-flop with Preset (PRE) and Clear (CLR) inputs.
   - The Verilog description includes simulation tests for normal D input clocking as well as Preset and Clear operations.
   - The circuit is analyzed for the behavior when Preset or Clear are active during clocking, and the effect of both signals being active simultaneously.

## Deliverables
- Circuit diagrams and timing diagrams for all parts.
- Simulations and hand-drawn waveforms showing the behavior of the SR-latch and D flip-flops under various conditions.
- Reports explaining and justifying all timing simulations and outcomes.

This project is part of the **Digital Logic Design** course at the University of Tehran.