# 4-Bit Vedic Multiplier 🔢⚡

This project implements a **4-bit Vedic multiplier** using hierarchical design and Verilog HDL. The multiplier is based on the **Urdhva Tiryagbhyam** sutra of Vedic mathematics, known for its fast and efficient multiplication technique.

## 🧠 Key Concepts

- Vedic Math: Urdhva Tiryagbhyam
- RTL Design using Verilog
- Hierarchical module instantiation
- Fast multiplication logic

## 📂 Project Structure

- `rtl/`: Verilog source code and testbench
- `docs/`: Diagrams and explanation
- `simulation/`: Waveform results
- `results/`: Area, power, delay reports
- `schematic/`: Layout or schematic screenshots , VIDEO-Clip

## ✅ Simulation Result

![Waveform](simulation/waveform.png)

## 🛠 Tools Used

- ModelSim / Vivado / Cadence
- GTKWave for waveform visualization
- Synopsys / Cadence for area and power reports

## 📊 Performance

| Metric | Value        |
|--------|--------------|
| Area   | XX µm²       |
| Delay  | YY ns        |
| Power  | ZZ µW        |

## 🧪 Testbench Example

```verilog
initial begin
  a = 4'b0011;
  b = 4'b0101;
  #10;
  $display("Result: %b", result);
end
