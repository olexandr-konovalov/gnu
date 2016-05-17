# gnu

## A database of numbers of isomorphism types of finite groups of given order

### What is gnu(n) ?

For an integer n, the number of isomorphism types of finite groups of order n 
is denoted by gnu(n), where "gnu" stands for the "**g**roup **nu**mber". The
determination of all groups of a given order up to isomorphism is an interesting
and challenging problem. For example, the number of groups of order n is the
sequence (<https://oeis.org/A000001>) in OEIS, with the first unknown entry being
gnu(2048). Known values of gnu(n) for 0 < n < 2048 are given in "Counting groups: 
gnus, moas and other exotica" by John H. Conway, Heiko Dietrich and E.A. O’Brien
(<https://www.math.auckland.ac.nz/~obrien/research/gnu.pdf>) which also discusses
some properties of gnu(n) and related functions.

### What is known for n > 2048 ?

For n > 2048, the calculation of gnu(n) is highly irregular. Some orders are covered
by the GAP Small Groups Library (<http://www.gap-system.org/Packages/sgl.html>) so
the gnu(n) is returned by `NrSmallGroups(n)`. The recenlty submitted GAP package 
SglPPow (<http://www.gap-system.org/Packages/sglppow.html>) by Michael Vaughan-Lee 
and Bettina Eick adds access to groups of order p^7 for p > 11 and to groups of order 
3^8 (it should be loaded with `LoadPackage("sglppow")`. For groups of cube-free order,
the Cubefee package (<http://www.gap-system.org/Packages/cubefree.html>) by Heiko 
Dietrich calculates gnu(n) with `NumberCFGroups(n)`.

### How to calculate gnu(n) for arbitrary n ?

For groups of other orders one could try the GAP package GrpConst by Hans Ulrich 
Besche and Bettina Eick (<http://www.gap-system.org/Packages/grpconst.html>) to 
construct all groups of a given order using `ConstructAllGroups(n)`. As documented 
at <http://www.gap-system.org/Manuals/pkg/grpconst/htm/CHAP003.htm>, this function 
usually returns a list of groups, in which case gnu(n) is the length of this list.
However, sometimes, it also contains lists of groups. In this case, one has to 
check that groups from such lists are pairwise nin-isomorphic or remove duplicates.

The runtime and memory requirements of `ConstructAllGroups` depend very much on n
and may vary from minimalistic to practically unfeasible. The website of AG Algebra 
und Diskrete Mathematik (TU Braunschweig) provides the table containing gnu(n) for 
many n < 50000: <http://www.icm.tu-bs.de/ag_algebra/software/small/number.html>.
These numbers were taken from the Small Groups Library or calculated with the 
GrpConst package. There is no information in the table for 1082 orders for which
the computation apparently was not feasible in the time of publishing the table.

### Goals of this package

As we see, currently there is no uniform access to the calculation of gnu(n) in
GAP even in the case when it is feasible, since one has to call different functions
in a different way, dependently on n. Furthermore, users who calculate new values 
of gnu(n) have no easy way to share their data to make them accessible to others.
Finally, there is no provenance of the data: who calculated them and when, using
which hardware and which versions of GAP and relevant packages, how much memory 
and runtime were needed. These missing details also hinder verification of the 
results, since one does not know in avance which resources should be dedicated 
to the experiment.

This package addresses these problems by:
- offering local access to the data via Gnu and GnuExplained 
- offering remoted access to the data via GnuFromServer and GnuExplainedFromServer
- using version control based development model

This repository contains a simple implementation of the GAP SCSCP 
server providing Gnu(n) - the number of groups of order n. It is
meant to be an example demonstrating how a remote procedure call 
protocol, called SCSCP, may be used to provide mathematical services
to clients representing computer algebra systems and other software.

This version uses Cubefree package for cubefree orders, otherwise
it delegates to NrSmallGroups. The latter is enhanced by SglPPow 
package which extends NrSmallGroups for groups of order p^7 for 
p>11 and for groups of order 3^8.

The demo version of this service is running in the cloud. To use
it, read the file `gnuclient.g` into GAP. Then you will be able
to use functions `Gnu` and `GnuExplained`, for example:

```
gap> Gnu(1024);
49487365422
gap> Gnu(3^8);
1396077
gap> GnuExplained(2304);
[ 15756130, "http://dx.doi.org/10.1016/j.jalgebra.2013.09.028" ]
gap> GnuExplained(13^7);
[ 1600573, "using NrSmallGroups from SglPPow 1.1" ]
```

You may try the following to see various cases that may appear:

```
gap> List([105,128,2004,10000,2304,3^8,7^2*5^2*11*19],Gnu);
[ 2, 2328, 10, false, 15756130, 1396077, 8 ]
gap> List([105,128,2004,10000,2304,3^8,7^2*5^2*11*19],GnuExplained);
[ [ 2, "using NrSmallGroups and the GAP Small Groups Library" ], 
  [ 2328, "using NrSmallGroups and the GAP Small Groups Library" ], 
  [ 10, "using NrSmallGroups and the GAP Small Groups Library" ], 
  [ false, "the library of groups of size 10000 is not available" ], 
  [ 15756130, "http://dx.doi.org/10.1016/j.jalgebra.2013.09.028" ], 
  [ 1396077, "using NrSmallGroups from SglPPow 1.1" ], 
  [ 8, "using NumberCFGroups from CubeFree 1.15" ] ]
```

This is work in progress. Latter you will find here details of:
* setting up your own SCSCP server
* using Gnu(n) locally

### Contributing to the database

The file `gnudata.g` contains some precomputed values of Gnu(n) for
orders which are not covered by the GAP Small Groups Library, CubeFree
and SglPPow packages. Contributions providing more values of Gnu(n) 
are welcomed. They may be submitted as issues or pull requests (see
an example at <https://github.com/alex-konovalov/gnu/issues/12>).
When a new issue or pull request will be created, you will see a template
asking for additional details needed to verify your calculation and
keep provenance of the data. You may generate parts of the submission 
automatically using the `grpconst.sh` script:
<https://github.com/alex-konovalov/gnu/blob/master/grpconst.sh>. For 
example:

```
$ ./grpconst.sh 50531
****************************************
Constructing all groups of order 50531
****************************************
#I  compute extensions of 5 groups of order 2197
#I  start extending group 1
...
...
****************************************
GAP      4.8.3
CubeFree 1.15
GrpConst 2.5
SglPPow  1.1
Runtime: 411 ms
Isomorphic groups eliminated!
Gnu( 50531 ) = 5
```

Then you will only need to add the description of the computer used for the computation.

Some suggestions for missing orders are published in the `WISHLIST.md` file:
<https://github.com/alex-konovalov/gnu/blob/master/WISHLIST.md>
