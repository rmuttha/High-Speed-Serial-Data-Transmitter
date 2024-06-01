# High-Speed Serial Data Transmitter Project

This project contains Verilog code for implementing a high-speed serial data transmitter on an FPGA.

## Modules

1. **`serial_transmitter.v`**: Verilog module for the serial data transmitter.
2. **`clock_generator.v`**: Verilog module for generating a clock signal.
3. **`testbench.v`**: Verilog testbench for simulating the serial transmitter module.

## Usage

1. **Simulation**: 
    - To simulate the functionality of the serial transmitter, you can use any Verilog simulator such as ModelSim.
    - Compile all Verilog files including `serial_transmitter.v`, `clock_generator.v`, and `testbench.v`.
    - Run the simulation and observe the behavior of the serial transmitter under different input conditions.

2. **FPGA Implementation**:
    - To implement the serial transmitter on an FPGA, use a synthesis tool compatible with your FPGA platform.
    - Instantiate the `serial_transmitter` module in your FPGA design and ensure proper pin assignments for clock input, data input, and serial output.
    - Synthesize, place, and route the design using the synthesis tool and program the FPGA with the generated bitstream.

## Parameters
- You can adjust parameters such as clock frequency, baud rate, and simulation duration in the Verilog files according to your requirements.
- Ensure proper timing constraints and resource utilization for FPGA implementation.

## Contributors
- Rutuja Muttha
- rmuttha@pdx.edu
