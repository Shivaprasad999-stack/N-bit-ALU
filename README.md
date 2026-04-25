# N-bit-ALU
A scalable N-bit ALU written in Verilog featuring arithmetic (ADD/SUB), logical (AND/OR/XOR/NOT), shift (SHL/SHR), and comparison (EQ/GT/LT) operations with carry, zero, sign, and overflow flags, along with a randomized testbench.
# 🔧 Parameterized N-bit ALU in Verilog

## 📌 Overview

This project implements a **parameterized N-bit Arithmetic Logic Unit (ALU)** in Verilog.
The ALU performs arithmetic, logical, shift, and comparison operations and generates important status flags.

---

## 🚀 Features

* ✅ Parameterized design (`N-bit`)
* ✅ Arithmetic operations: ADD, SUB
* ✅ Logical operations: AND, OR, XOR, NOT
* ✅ Shift operations: SHIFT LEFT (SHL), SHIFT RIGHT (SHR)
* ✅ Comparison operations: EQUAL (EQ), GREATER THAN (GT), LESS THAN (LT)
* ✅ Flag generation:

  * Carry
  * Zero
  * Sign
  * Overflow

---

## 🧠 Supported Operations

| `sel` | Operation         |
| ----- | ----------------- |
| 0000  | AND               |
| 0001  | OR                |
| 0010  | ADD               |
| 0011  | SUB               |
| 0100  | XOR               |
| 0101  | NOT               |
| 0110  | SHIFT LEFT (SHL)  |
| 0111  | SHIFT RIGHT (SHR) |
| 1000  | EQUAL (EQ)        |
| 1001  | GREATER THAN (GT) |
| 1010  | LESS THAN (LT)    |

---

## 🏗️ Design Explanation

### 🔹 Parameterization

```verilog
parameter N = 4;
```

Allows easy scaling to different bit-widths (8-bit, 16-bit, etc.).

---

### 🔹 ADD / SUB Implementation

Subtraction is implemented using **2’s complement**:

[
A - B = A + (~ B + 1)
]

* `is_sub` → detects subtraction
* `b_mod` → modified input B
* `sum_ext` → extended sum (N+1 bits)

---

### 🔹 Shift Operations

```verilog
a << 1   // Shift Left (multiply by 2)
a >> 1   // Shift Right (divide by 2)
```

---

### 🔹 Comparison Operations

```verilog
(a == b)  // Equal
(a > b)   // Greater Than
(a < b)   // Less Than
```

Output:

* `0001` → TRUE
* `0000` → FALSE

---

### 🔹 Flags

| Flag     | Description                    |
| -------- | ------------------------------ |
| Carry    | Unsigned overflow (from adder) |
| Zero     | Result equals zero             |
| Sign     | MSB of result                  |
| Overflow | Signed overflow                |


## 📊 Example Output

```
time=0 a=0101 b=0011 sel=0010 result=1000
time=1 a=1110 b=0001 sel=0011 result=1101
```

---

## 💡 Key Learnings

* Parameterized RTL design
* ALU architecture (Arithmetic + Logic + Shift + Compare)
* Hardware reuse using 2’s complement
* Flag computation
* Randomized testbench verification

---

## 🔮 Future Improvements

* Pipeline the ALU
* Add multiplication/division
* Barrel shifter implementation
* SystemVerilog-based verification

---

## 👨‍💻 Author

**Shivaprasad B Sudi**
Electronics & Communication Engineering
DAYANANDA SAGAR ACADEMY OF TECHNOLGY AND MANAGEMENT
BENGALURU
