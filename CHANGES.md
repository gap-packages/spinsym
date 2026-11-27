This file describes changes in the SpinSym package.

## 1.6.0 (2026-11-27)

- Label the non-spin p-modular characters of 2.Alt(n) like those of
  Alt(n), as the manual describes: `[1,[c,'0']]` instead of `[1,c]`

## 1.5.3 (2026-11-26)

- Require GAP >= 4.12.0 and CTblLib >= 1.3.0
- `SpinSymClassFusion` returns `fail` for unsupported pairs of tables
  instead of raising an error; its messages are now printed via the new
  info class `InfoSpinSym` (warnings via `InfoWarning`)
- Notify CTblLib of all character tables in one call, which makes
  loading SpinSym about 45 ms faster
- Fix typos, citations and bibliography links in the manual

## 1.5.2 (2019-10-01)

## 1.5.1 (2019-03-02)

## 1.5 (2013-02-01)

## 1.4 (2013-02-01)

## 1.3 (2013-02-01)

## 1.2 (2013-02-01)
