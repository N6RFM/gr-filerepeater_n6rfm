# gr-filerepeater_n6rfm

Fork of [ghostop14/gr-filerepeater](https://github.com/ghostop14/gr-filerepeater),
maintained for use with **[groundtrack](https://github.com/N6RFM/groundtrack)**,
an unattended satellite ground station automation project. Upstream's
own docs: [docs/UPSTREAM_README.md](docs/UPSTREAM_README.md).

## Changes in this fork

- **`AdvFileSink` can write 16-bit and 8-bit I/Q files (`sc16`, `sc8`)**:
  two new **Input Type** choices, *Complex -> sc16 file* and *Complex ->
  sc8 file*. The input is still a complex float stream, but the file gets
  interleaved signed integers (4 or 2 bytes per sample instead of 8), so
  a long recording takes half or a quarter of the disk space of the
  plain *Complex* (`fc32`) type. Files end in `.sc16` / `.sc8`. A new
  **Scale** field multiplies each value before rounding (0 = full scale:
  32767 for sc16, 127 for sc8, which suits a +/-1 float source such as
  an osmocom source); values past full scale are clipped. When a file
  closes, the block prints the peak value seen, the scale used and how
  many values were clipped, so Scale can be tuned. The new `scale`
  argument of `AdvFileSink.make` is last and optional (default 0), so
  existing flowgraphs and generated Python keep working unchanged.
  `sc16`/`sc8` are the names `sidscan.py` and similar tools use for
  `--format`.
- **Fixed a timestamp bug in `AdvFileSink`/`VectorToTxtFile`**: both
  built recorded filenames from `tm_mon` directly, but C's `struct tm`
  is zero-indexed for month (Jan = `0`) - every filename's month was off
  by one. Added `+ 1` in both.
- **`Record On Start` (`AdvFileSink`) now accepts an expression, not
  just a fixed Yes/No**: changed from `dtype: enum` (a locked
  `['False', 'True']` list) to `dtype: raw` in the block's `.yml`, so
  the field can hold any Python expression instead of only a literal -
  added specifically so [groundtrack](https://github.com/N6RFM/groundtrack)
  can point it at an `int`-typed Parameter block (`record_iq`, default
  `1`) via the expression `bool(record_iq)`, and toggle IQ recording on
  or off per pass with a plain `1`/`0` command-line flag, without
  editing the `.grc` each time. The Parameter block itself stays `int`
  (matching what its auto-generated command-line flag expects) - the
  conversion to a real Python `True`/`False` happens only inside the
  compiled flowgraph, via `bool(record_iq)`, since that's what
  `AdvFileSink`'s own constructor requires for this argument.
