# Timing Results (from real OpenSTA reports — see `timing_report_arb.txt` / `timing_report_crc.txt`)

Clock constraint: **50 MHz (20 ns period)** for both blocks.

## Summary

| Metric | Arbitration | CRC |
|---|---|---|
| Max path (critical path) delay | 15.86 ns | 7.97 ns |
| Setup slack | 3.08 ns (MET) | 11.34 ns (MET) |
| Min path delay | 3.12 ns | 4.28 ns |
| Hold slack | 3.03 ns (MET) | 4.19 ns (MET) |
| Achievable Fmax (1 / critical path) | ~63 MHz | ~125 MHz |

Both blocks close timing comfortably against the 50 MHz target — the generous
slack reflects a modest constraint choice, not a maximally-pushed design;
neither block was constrained near its actual achievable limit.

## Critical path (max/setup) — Arbitration

Startpoint/Endpoint: `_135_` → `_137_` (both clocked by CLK)
Path runs through cells: `DFCL11 → ORND01 → XNR201 → OR3101 → ADNR01 → ADNR01 → OR2101 → AND501 → XNR201 → NOR200`
10 logic levels on the critical path — consistent with Arbitration's
bit-select/comparator/next-state logic being the slowest path in the design.

## Critical path (max/setup) — CRC

Startpoint/Endpoint: `_119_` → `_116_` (both clocked by CLK)
Path runs through cells: `DFFL11 → XOR201 → XNR201 → ADNR01`
Only 3 logic levels — consistent with CRC's feedback path being a short,
regular LFSR tap, which is why CRC achieves roughly double Arbitration's Fmax.

## Min path (hold) — both blocks

Short register-to-register paths (2 logic levels for Arbitration, 2 for CRC)
with library hold-time requirements of ~0.09–0.10 ns. Hold slack is large
simply because these particular short paths still pass through a couple of
real combinational gates — this is normal path behavior, not a sign of
loose or uncharacterized timing data.

Full un-redacted reports with complete path breakdowns are in
`timing_report_arb.txt` and `timing_report_crc.txt`.
