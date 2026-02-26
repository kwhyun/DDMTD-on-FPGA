import numpy as np
import pandas as pd

# -------------------------------------------------
# Configuration
# -------------------------------------------------
BASE_FILE = "data/base.csv"
SHIFTED_FILE = "data/shift.csv"

HEADER_LINES = 2
COLUMN_INDEX = 3        # 0-based index
TOTAL_SAMPLES = 32768
SET_SIZE = 32

SCALE_FACTOR = 4.2646
THEORETICAL_VALUE = 125.0  # ps

# -------------------------------------------------
# Load data
# -------------------------------------------------
base_df = pd.read_csv(BASE_FILE, skiprows=HEADER_LINES, header=None)
shifted_df = pd.read_csv(SHIFTED_FILE, skiprows=HEADER_LINES, header=None)

base = base_df.iloc[:, COLUMN_INDEX].to_numpy()
shifted = shifted_df.iloc[:, COLUMN_INDEX].to_numpy()

if len(base) != TOTAL_SAMPLES or len(shifted) != TOTAL_SAMPLES:
    raise ValueError("Sample count is not 32768.")

# -------------------------------------------------
# Compute scaled difference (unit: ps)
# -------------------------------------------------
diff_ps = SCALE_FACTOR * (shifted - base)

# -------------------------------------------------
# Compute 32-sample averages
# -------------------------------------------------
num_sets = TOTAL_SAMPLES // SET_SIZE
sets = diff_ps.reshape(num_sets, SET_SIZE)
set_means = np.mean(sets, axis=1)  # ps

# -------------------------------------------------
# Compare against theoretical value (125 ps)
# -------------------------------------------------
errors = set_means - THEORETICAL_VALUE  # ps

mean_value = np.mean(set_means)          # ps
std_value = np.std(set_means, ddof=1)    # ps

mean_error = np.mean(errors)             # ps (bias)
std_error = np.std(errors, ddof=1)       # ps (precision)
rms_error = np.sqrt(np.mean(errors**2))  # ps

# -------------------------------------------------
# Accuracy (0–100%)
# Definition: relative error w.r.t theoretical value
# -------------------------------------------------
accuracy_percent = max(
    0.0,
    100.0 * (1.0 - abs(mean_error) / THEORETICAL_VALUE)
)

# -------------------------------------------------
# 95% Confidence Interval of the mean
# -------------------------------------------------
sem = std_value / np.sqrt(num_sets)   # standard error (ps)
ci_95 = 1.96 * sem                    # ps

# -------------------------------------------------
# Output
# -------------------------------------------------
print("===== Results (Unit: ps) =====")
print(f"Number of sets                  : {num_sets}")
print(f"Mean of set averages            : {mean_value:.6f} ps")
print(f"Standard deviation of sets      : {std_value:.6f} ps")
print("")
print("----- Comparison to 125 ps -----")
print(f"Mean error (Bias)               : {mean_error:.6f} ps")
print(f"Error standard deviation        : {std_error:.6f} ps")
print(f"RMS error                       : {rms_error:.6f} ps")
print(f"Accuracy (0–100%)               : {accuracy_percent:.3f} %")
print(f"95% Confidence interval (mean)  : ±{ci_95:.6f} ps")
