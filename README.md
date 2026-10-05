<img width="1920" height="1080" alt="Screenshot from 2026-10-05 16-36-48" src="https://github.com/user-attachments/assets/d5e58ab9-3d12-4557-a3ba-70512bdc4176" />

# Parameterized Register File — RTL to GDSII

A complete RTL-to-GDSII implementation of a parameterized register file using a 45 nm technology node.

## Technology & Design

| Parameter | Value |
|---|---:|
| Technology | 45 nm |
| Clock Frequency | 200 MHz |
| Clock Period | 5 ns |
| Instances | 3,485 |
| Area | 12,659.327 µm² |
| Utilization | 48.073% |
| Operating Voltage | 1.08 V |

---

## Timing Results

### Setup

| Metric | Result |
|---|---:|
| Setup WNS | **+79 ps** |
| Setup TNS | **0 ps** |
| Violating Paths | **0 / 1,056** |
| Reg-to-Reg Setup WNS | **+4.368 ns** |

### Hold

| Metric | Result |
|---|---:|
| Hold WNS | **+67 ps** |
| Hold TNS | **0 ps** |
| Violating Paths | **0 / 1,056** |

**Timing status: PASS**

No setup or hold violations were reported at 200 MHz.

---

## Power

| Component | Power |
|---|---:|
| Internal Power | 2.248 mW |
| Switching Power | 0.859 mW |
| Leakage Power | 0.000427 mW |
| **Total Power** | **3.107 mW** |

**Operating Voltage:** 1.08 V

---

## Physical Design

| Metric | Result |
|---|---:|
| Utilization | 48.073% |
| Area | 12,659.327 µm² |
| Instances | 3,485 |
| Max Capacitance Violations | **0** |
| Max Transition Violations | **0** |
| Max Fanout Violations | **0** |
| Max Length Violations | **0** |
| Metal Density Violations | **0** |

---

## Physical Verification

| Check | Violations |
|---|---:|
| DRC | **0** |
| Connectivity | **0** |
| Metal Density | **0** |
| Max Capacitance | **0** |
| Max Transition | **0** |
| Max Fanout | **0** |
| Max Length | **0** |

### Final Status

**PASS — 0 reported violations across physical and timing checks.**

---

## RTL-to-GDSII Flow

```text
RTL
 │
 ▼
Simulation / Verification
 │
 ▼
Synthesis
 │
 ▼
Floorplanning
 │
 ▼
IO Planning
 │
 ▼
Power Planning
 │
 ▼
Placement
 │
 ▼
Pre-CTS Optimization
 │
 ▼
Clock Tree Synthesis
 │
 ▼
Post-CTS Optimization
 │
 ▼
Routing
 │
 ▼
Post-Route Optimization
 │
 ▼
Physical Verification
 │
 ▼
GDSII
