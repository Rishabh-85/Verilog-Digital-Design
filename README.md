# Verilog Digital Design & Verification

Digital logic and arithmetic circuits designed from first principles in Verilog HDL and verified through simulation and waveform analysis using **Icarus Verilog** and **GTKWave**.

---

## Repository Structure

| Category | Circuits & Implementations | Folder |
|----------|----------------------------|--------|
| **Adders** | Half Adder (Standard, NAND-only, NOR-only), Full Adder (2 Half Adders, Direct Logic, NAND-only), 4-Bit & 8-Bit Ripple Carry Adders | `Adders/` |
| **Subtractors** | Half Subtractor (Standard, NAND-only, NOR-only), Full Subtractor (Standard, NAND-only) | `Subtractors/` |
| **Multipliers** | 2-Bit Binary Multiplier | `Multipliers/` |
| **Multiplexers** | 2:1 Multiplexer | `2-1 Mux/` |
| **Multiplexers** | 4:1 Multiplexer | `4-1 Mux/` |

---

## Tools Used

- **Icarus Verilog** (`iverilog`, `vvp`): compilation and simulation
- **GTKWave**: waveform viewing and analysis

---

## How to Simulate

Each circuit folder contains both the RTL design module (`.v`) and its corresponding testbench (`_tb.v`).

To compile, run, and inspect waveforms:

```bash
iverilog -o sim.vvp <design_file>.v <testbench_file>.v
vvp sim.vvp
gtkwave dump.vcd
```

### Example

```bash
cd "4-1 Mux"
iverilog -o sim.vvp muxfour.v tb_muxfour.v
vvp sim.vvp
gtkwave dump.vcd
```

> **Note:** The testbench must include `$dumpfile("dump.vcd");` and `$dumpvars(0, <tb_name>);` for the waveform file to be generated.

---

## Design Highlights

- **Multiple implementation styles:** the same function built using standard gates, universal gates (NAND-only / NOR-only), and hierarchical composition to compare structure and gate cost.
- **Hierarchical design:** Full Adders built from Half Adders, then chained into 4-bit and 8-bit Ripple Carry Adders.
- **Data selection logic:** 2:1 and 4:1 multiplexers demonstrating how select lines route one of several inputs to a single output.
- **Self-contained testbenches:** each design is verified against its expected truth table or behavior.

---

## Multiplexer Reference

**2:1 MUX**

| S | Y |
|---|----|
| 0 | I0 |
| 1 | I1 |

Boolean expression: `Y = (~S & I0) | (S & I1)`

**4:1 MUX**

| S1 | S0 | Y  |
|----|----|----|
| 0  | 0  | I0 |
| 0  | 1  | I1 |
| 1  | 0  | I2 |
| 1  | 1  | I3 |

Boolean expression: `Y = (~S1 & ~S0 & I0) | (~S1 & S0 & I1) | (S1 & ~S0 & I2) | (S1 & S0 & I3)`

---

## Project Layout

```
.
├── Adders/
├── Subtractors/
├── Multipliers/
├── 2-1 Mux/
├── 4-1 Mux/
└── README.md
```

---
