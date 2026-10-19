![Verilog](https://img.shields.io/badge/Verilog-hardware%20design-blue)
![C++](https://img.shields.io/badge/C%2B%2B-HLS%20%2B%20OpenCL-green)
![FPGA](https://img.shields.io/badge/FPGA-ZedBoard%20(Zynq--7000)-purple)
![Coursework](https://img.shields.io/badge/UTH-ECE340-teal)

# ECE340 Embedded Systems

Coursework for **ECE340 Embedded Systems** at the **University of Thessaly**. All three labs target the ZedBoard (Zynq-7000: dual-core ARM Cortex-A9 + FPGA fabric), going from a hand-written Verilog floating point adder, to an ARM-based SoC with custom AXI IP, to an HLS hardware accelerator driven through OpenCL.

## Labs

| Path | Topic | Summary |
| --- | --- | --- |
| [`Lab1_FPU_Design/`](Lab1_FPU_Design/) | Floating point adder in Verilog | IEEE 754 single-precision adder, single-cycle then two-stage pipelined, simulated and run on the ZedBoard. |
| [`Lab2_Arm/`](Lab2_Arm/) | ARM-based SoC | Cortex-A9 platforms in Vivado with GPIO polling, button interrupts and timer-based benchmarking; the Lab1 adder packaged as an AXI4-Lite IP with its own driver. |
| [`Lab3_Accelerator/`](Lab3_Accelerator/) | HLS accelerator for local sequence alignment | Smith-Waterman on x86, on the ARM, and as a Vitis HLS kernel on the FPGA. **1.2 ms per alignment: 73x faster than the software on the ARM, and 2755x faster than the unoptimized HLS kernel.** |

Lab handouts are in [`docs/handouts/`](docs/handouts/) and the Lab3 report in [`docs/reports/`](docs/reports/).

## Lab1: Floating point adder

| Step | Contents |
| --- | --- |
| `step1/` | Single-cycle adder and a testbench driven by `fp_InOut.hex` |
| `step2/` | Two-stage pipelined adder, same test vectors |
| `step3/` | Adder on the board, results on the LEDs and two seven-segment displays |
| `step4/` | Operands from a data memory, debounced buttons, system testbench |

## Lab2: ARM SoC

The hardware platforms are built in Vivado and exported to the Vitis IDE, where the bare-metal C applications are written, run and profiled on the ARM. The Vivado projects target the ZedBoard (`em.avnet.com:zed:part0:1.4`) and need its board files installed.

| Path | Contents |
| --- | --- |
| `step1/` | Vitis apps. `lab2.c` reads the buttons and switches over AXI GPIO; `lab2_interrupt.c` counts button presses with the GIC |
| `step2/` | Vitis app. `benchmark.c` and `timer_util.c/h` profile code with the private timer |
| `step3/` | Vitis app. `lab2_fpadd.c` drives the adder IP from the ARM |
| `ip_repo/fpadd_ip_1.0/` | The Lab1 adder wrapped as an AXI4-Lite peripheral, with its driver |
| `lab2_simple_arm/`, `interrupt_arm/`, `fpadd_arm/` | Vivado projects (block designs, IP configuration, constraints), exported as the hardware platforms for the Vitis apps |

## Lab3: Local sequence alignment accelerator

| Path | Contents |
| --- | --- |
| `sw_x86/`, `sw_arm/` | Software versions: row-wise and anti-diagonal traversal, OpenMP on x86 |
| `hw_baseline/src/lsal.cpp` | Final HLS kernel |
| `hw_baseline/src/lsal_host.cpp` | OpenCL host: transfers, timing, and checking against a software golden model |
| `hw_baseline/vitis_hls/` | Intermediate kernels from the optimization process |

The kernel walks the score matrix along anti-diagonals, so every cell of one diagonal can be computed in parallel. Each loop iteration produces a whole diagonal (32 cells) and the loop is pipelined at II=1. Strings are packed 2 bits per character and buffered in BRAM, the database characters move through a shift register, and scores use arbitrary-precision types sized to the query length. Query length 32, database length 65,536.

Build (Vitis 2020.2, ZedBoard platform):

```
cd Lab3_Accelerator/hw_baseline
make all TARGET=hw DEVICE=<zedboard platform .xpfm> HOST_ARCH=aarch32 EDGE_COMMON_SW=<petalinux rootfs + image>
```

## Authors
- **Christos Mountakis** (cmountakis at uth dot gr)
- **Alexandra Tsakiri** (altsakiri at uth dot gr)
