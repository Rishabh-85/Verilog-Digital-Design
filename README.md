# Verilog Digital Design & Verification

Digital logic and arithmetic circuits designed from first principles in **Verilog HDL** and verified through simulation and waveform analysis using **Icarus Verilog** and **GTKWave**.

## Repository Structure

| Category | Circuits & Implementations | Folder |
|---|---|---|
| **Adders** | Half Adder (Standard, NAND-only, NOR-only), Full Adder (2 Half Adders, Direct Logic, NAND-only), 4-Bit & 8-Bit Ripple Carry Adders | `Adders/` |
| **Subtractors** | Half Subtractor (Standard, NAND-only, NOR-only), Full Subtractor (Standard, NAND-only) | `Subtractors/` |
| **Multipliers** | 2-Bit Binary Multiplier | `Multipliers/` |

## How to Simulate

Each circuit folder contains both the RTL design module (`.v`) and its corresponding testbench (`_tb.v`). To compile, run, and inspect waveforms using **Icarus Verilog** and **GTKWave**:

    iverilog -o sim.vvp <design_file>.v <testbench_file>.v
    vvp sim.vvp
    gtkwave dump.vcd
