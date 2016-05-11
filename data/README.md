This directory contains the following files:

- gnu50000.txt
- gnu50000.g

`gnu50000.txt` is the text file with gnu(n) for n<50000 from TUBS page
<http://www.icm.tu-bs.de/ag_algebra/software/small/number.html>. It 
was produced by stripping off HTML code. It contains exactly one value 
per line, so you should see line number n for the value of gnu(n).

`gnu50000.g` is the GAP-readable version of `gnu50000.g`. 
It has been produced from `gnu50000.txt` using the following script:

```
f:=IO_File("gnu50000.txt");
PrintTo("gnu50000.g", "gnu50000:=[ " );
f:=IO_File("gnu50000.txt");
for i in [1..50000] do
  s:=IO_ReadLine(f);
  NormalizeWhitespace(s);
  if s = "--" then
    s := fail;
  else
    s := Int(s);
  fi;
  AppendTo( "gnu50000.g", [ i, s ], ",\n" );
od;
AppendTo("gnu50000.g", "];");
IO_Close(f);
```

While it could be possible to keep a list with holes having gnu(n)
at n-th position, this list is deliberately made redundant for
easier navigation and extra consistency check: it contains gnu(n)
exactly in the n-th line.

The number of unknown gnu(n) from the table may be determined as

```
gap> Number(gnu50000, x -> x[2]=fail);
1082
```
coinciding with the number given at the TUBS page.
