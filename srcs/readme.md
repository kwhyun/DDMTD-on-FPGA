# How to Use This Source (Vivado)

This directory contains the RTL, block design, and constraints for the DDMTD project targeting **ZedBoard (Zynq-7000, 7-series FPGA)**.

Follow the steps below to build the project.

---

## 1. Create Vivado Project

1. Open Vivado → Create Project
2. Select **RTL Project**
3. Do NOT add sources during project creation
4. Select the target device for ZedBoard  
   (e.g., xc7z020clg484-1)

Finish project creation.

---

## 2. Add RTL Sources

Add all design HDL files:

Add Sources → Add or Create Design Sources  
→ Add all files under:

```
src/hdl/
```

If a testbench (e.g., `ddmtd_tb`) exists:

Add Sources → Add or Create Simulation Sources  
→ Add the testbench there (Simulation Only)

---

## 3. Add Block Design

Add the block design directory:

Add Sources → Add or Create Design Sources  
→ Add:

```
src/bd/ddmtd_dps_bd/
```

Open the block design and click:

Generate Output Products

---

## 4. Add Constraints

Add the constraint file:

Add Sources → Add or Create Constraints  
→ Add:

```
src/constraints/ddmtd_const.xdc
```

---

## 5. Build

1. Generate Output Products (Block Design)
2. Run Synthesis
3. Run Implementation
4. Generate Bitstream

---

## 6. Program and Run

1. Program the ZedBoard via Hardware Manager
2. Use VIO to control phase shift and reset
3. Use ILA to observe DDMTD phase measurement results

---

That’s all.  
All required sources are under `src/`.
