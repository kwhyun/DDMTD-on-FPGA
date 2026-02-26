# DDMTD 32-Sample Averaging Validation for White Rabbit Servo

## 1. Overview

In a White Rabbit (WR) system, the phase difference measured by DDMTD is fed into the SoftPLL-based **servo loop** for phase correction.

For stable WR servo operation, the phase error must be updated at approximately **1 kHz or higher**. This requirement arises from control loop bandwidth and phase margin considerations.

The following conditions were used in this project:

- Input clock  
  \( f_{clk\_in} = 125 \text{ MHz} \)
- DDMTD clock  
  \( f_{clk\_ddmtd} = 125.06667 \text{ MHz} \)
- Raw DDMTD sample update rate ≈ 66.67 kHz

---

## 2. Necessity of 32-Sample Averaging

The raw DDMTD output exhibits the following characteristics:

- Possible glitches due to sampling structure  
- Metastability effects  
- Clock jitter influence  
- Instability near the deglitch threshold  

Therefore, instead of feeding the raw 66.67 kHz output directly into the servo, averaging 32 samples reduces output instability while simultaneously satisfying the SoftPLL update rate requirement.

\[
66.67\text{ kHz} / 32 = 2.083\text{ kHz}
\]

After averaging, the effective update rate becomes approximately **2.08 kHz**, which exceeds the WR servo requirement (~1 kHz) by more than a factor of two.

Additionally, averaging mitigates the impact of random jitter and glitch-induced variations.

---

## 3. Experimental Setup

### 3.1 Objective

To verify the statistical reliability of transmitting 32-sample averaged DDMTD outputs to the WR servo.

---

### 3.2 Data Composition and Time Conversion

- Base data (before phase shift)  
- Shifted data (after applying 125 ps MMCM Dynamic Phase Shift)  
- Total samples: 32768  

Since DDMTD output is in counter units, it must be converted into time (ps).

Based on the DDMTD phase magnification principle, the counter difference is converted to time using:

\[
\Delta t =
\frac{f_{sampled}}
{f_{clk\_in} \cdot f_{clk\_ddmtd}}
\times 10^{12}
\cdot (shifted - base)
\]

Under the experimental conditions, the conversion factor is:

\[
4.2646 \text{ ps/count}
\]

Thus, the final phase difference is calculated as:

\[
d = 4.2646 \times (shifted - base)
\]

Unit: **ps**

---

### 3.3 Statistical Structure

- Total samples: 32768  
- 32 samples per set  
- Total sets: 1024  

Each set was averaged, and inter-set statistics were computed.

---

## 4. Experimental Results
===== Results (Unit: ps) =====
Number of sets                  : 1024
Mean of set averages            : 129.544513 ps
Standard deviation of sets      : 3.406423 ps

----- Comparison to 125 ps -----
Mean error (Bias)               : 4.544513 ps
Error standard deviation        : 3.406423 ps
RMS error                       : 5.678467 ps
Accuracy (0–100%)               : 96.364 %
95% Confidence interval (mean)  : ±0.208643 ps


---

## 5. Result Interpretation

### (1) Mean Value

The mean of the set averages is:

\[
129.5445\text{ ps}
\]

Compared to the theoretical value of 125 ps, this corresponds to:

\[
+4.5445\text{ ps}
\]

Relative error ≈ 3.64%, resulting in approximately 96.36% accuracy.

---

### (2) Precision

Inter-set standard deviation:

\[
3.4064\text{ ps}
\]

This represents the short-term variability after 32-sample averaging.

The results indicate that random jitter and glitch effects were effectively reduced by averaging.

---

### (3) RMS Error

\[
5.6785\text{ ps}
\]

This reflects the total error magnitude, including both bias and random variation.

---

### (4) 95% Confidence Interval of the Mean

\[
\pm 0.2086\text{ ps}
\]

This is the statistical uncertainty of the estimated mean based on 1024 sets.

---

## 6. Conclusion

This experiment systematically validated the statistical characteristics of the DDMTD output using a sufficiently large dataset (32768 samples) and structured set-based analysis (1024 sets).

The 32-sample averaged output satisfies the SoftPLL update rate requirement while maintaining stable statistical dispersion. The confidence interval of the estimated mean is sufficiently small to demonstrate measurement reliability.

The results confirm that, even with the limited resources of a **Xilinx 7-series FPGA**, it is possible to implement and verify a DDMTD-based phase measurement system achieving **sub-nanosecond resolution**, without requiring additional high-resolution TDC architectures.

This design therefore demonstrates a practical and resource-efficient implementation of DDMTD for White Rabbit systems, achieving both high timing resolution and hardware efficiency.
