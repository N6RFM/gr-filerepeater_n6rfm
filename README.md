# gr-filerepeater_n6rfm

Fork of [ghostop14/gr-filerepeater](https://github.com/ghostop14/gr-filerepeater),
maintained for use with **[groundtrack](https://github.com/N6RFM/groundtrack)**,
an unattended satellite ground station automation project. Upstream's
own docs: [docs/UPSTREAM_README.md](docs/UPSTREAM_README.md).

## Changes in this fork

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
