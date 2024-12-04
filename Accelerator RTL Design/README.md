
# RTL Design for cos(x) Calculation Accelerator

This project implements an accelerator for computing **cos(x)** using a Taylor series expansion. 
The input and output are fixed-point numbers, and the precision is adjustable through an additional input.

## Instruction Overview

The project is divided into the following design and implementation phases as per the provided instruction file:

### Design Phase:
1. **Datapath Design**:
   - Schematic diagram of the datapath for calculating `cos(x)`.
   - State diagram of the controller using the Hoffman model.

2. **Components**:
   - Utilizes predefined components like multipliers, adders, subtractors, registers, and ROM for Taylor series coefficients.
   - Lookup-table ROM is used for coefficient initialization.

3. **Controller Implementation**:
   - Verilog implementation of the controller.
   - Connection of the Hoffman model to datapath and buses.

### Implementation Phase:
1. **Component Design**:
   - Build the datapath using SystemVerilog and predefined components.
   - Initialize ROM using a memory hex file.

2. **Controller Design**:
   - Enter Verilog description of the controller.

3. **Integration**:
   - Synthesize and integrate the complete circuit.
   - Generate `.vo` and `.sdo` files for the design.

4. **Testing**:
   - Develop a testbench to test the complete circuit.

## File Descriptions

### Source Files
1. **addSub.v**: Implements addition and subtraction logic.
2. **comparator.v**: Compares values for decision-making in the Taylor series.
3. **controller.v** and **controllerV.v**: Implements the state machine for controlling the datapath.
4. **counter.v**: A counter for tracking iterations in the Taylor series expansion.
5. **lookupTable.v** and **lookupTableV.v**: Implements a ROM-based lookup table for Taylor series coefficients.
6. **multiplexer.v**: A multiplexer for selecting inputs for different stages of the computation.
7. **multiplier.v**: A multiplier module for Taylor series computations.
8. **register.v** and **registerV.v**: Stores intermediate results during computations.
9. **ROM.v**: Read-only memory implementation for storing coefficients.

### Testbenches
1. **cosx_testBench.v**: Verifies the functionality of the complete cos(x) computation unit.

### Synthesized Files
1. **_syn.v**: Synthesized versions of the corresponding Verilog modules.
2. **_bb.v**: Blackbox representations of the corresponding modules.

### Supporting Files
1. **Instruction.pdf**: Detailed description of design and implementation tasks.
2. **sin.mif.txt**: Memory initialization file for ROM.

## How to Use
1. Open the project in Quartus II or another compatible Verilog simulation environment.
2. Compile the modules and integrate them into the complete design.
3. Test the functionality using `cosx_testBench.v`.
4. Synthesize the design and generate `.vo` and `.sdo` files.

## Notes
- Ensure the ROM is initialized with the provided `.mif` file for correct operation.
- Test individual modules before integrating them into the full design.

