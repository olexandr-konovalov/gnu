# gnu

## Crowdsourcing project for the database of numbers of isomorphism types of finite groups

### What is gnu(n) ?

For an integer n, the number of isomorphism types of finite groups of order n 
is denoted by gnu(n), where "gnu" stands for the "Group NUmber". The problem
of the determination of all groups of a given order up to isomorphism is very
interesting and challenging. For example, the sequence (<https://oeis.org/A000001>) 
in OEIS is the number of groups of order n, with the first unknown entry being
gnu(2048). Known values of gnu(n) for 0 < n < 2048 are given in "Counting groups: 
gnus, moas and other exotica" by John H. Conway, Heiko Dietrich and Eamonn A. O’Brien
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
However, sometimes this list contains sublists. In this case, one has to check each
such sublist contains groups which are pairwise non-isomorphic, or remove duplicates.

The runtime and memory requirements of `ConstructAllGroups` depend very much on n
and may vary from minimalistic to practically unfeasible. The website of AG Algebra 
und Diskrete Mathematik (TU Braunschweig) provides the table containing gnu(n) for 
many n < 50000: <http://www.icm.tu-bs.de/ag_algebra/software/small/number.html>.
These numbers were taken from the Small Groups Library or calculated with the 
GrpConst package. There is no information in the table for 1082 orders for which
the computation apparently was unfeasible at the time of publishing the table.

### Goals of this package

As we see, currently there is no uniform access to the calculation of gnu(n) in
GAP even in the case when it is feasible, since one has to call different functions
in a different way, dependently on n. Even finding all known gnu(n) for a list 
of integers with `NrSmallGroups` is not straightforward, since GAP enters a break
loop when the library of groups of order n is not available. Also, these data are 
accessible only from within the working GAP installation. Furthermore, users who 
calculate new values of gnu(n) have no easy way to share their data to make them 
accessible to others. Finally, there is no provenance of the data, i.e. storing
who calculated them and when, using which hardware and which versions of GAP and
relevant packages, and how much memory and runtime were needed. These missing
details also hinder verification of the results, since one does not know in 
advance which resources should be dedicated to rerun the experiment. 

The Gnu package addresses these problems by:
- Providing uniform access to the calculation of gnu(n) using a single function.
- Offering both the ability to install package locally and to access it remotely
  without its local installation.
- Providing remote data via SCSCP (Symbolic Computation Software Composablity 
  Protocol) to make them accessible to any SCSCP-compliant software (see the
  list at <http://www.symbolic-computing.org>).
- Using GitHub-based development model and recording provenance information
  using revision history.

### Local installation

To use the package locally, first you have to install the GAP system using the
source distrubution from http://www.gap-system.org/Releases/. Please ensure
that you build packages as described there as well. After that, the Gnu package 
could be installed in the same way like other GAP packages that do not require
compilation. It is suggested to install it as a custom package in the `.gap/pkg` 
subdirectory of your home directory instead of placing it into the `gap4rN/pkg` 
directory of your GAP installation. Since the package is regularly updated with 
new data, you may use git to clone it and subsequently pull changes from the 
main repository. To do this, change to the `.gap/pkg` directory and call
```
git clone https://github.com/alex-konovalov/gnu.git
```
This will create the directory `gnu`. Later when you will need to pull changes,
change to that directory and call
```
git pull
```
Alternatively, you may download the repository as a zip-archive from
<https://github.com/alex-konovalov/gnu/archive/master.zip> and later
update it manually by dowloading new zip-archive and unpacking it to
replace the previous installation of the Gnu package.

After loading the package with `LoadPackage("gnu");` you should be able to
use it as follows:

```
gap> Gnu(10000);
4728
gap> GnuExplained(10000);
[ 4728, "precomputed using GrpConst package" ]
gap> NextUnknownGnu(10000);
10080
gap> GnuWishlist([2000..3000]);
[ 2048, 2240, 2496, 2560, 2592, 2688, 2880, 2916 ]
gap> List([105,128,2004,10000,2304,3^8,7^2*5^2*11*19,50000],Gnu);
[ 2, 2328, 10, 4728, 15756130, 1396077, 8, false ]
```

You may see some more examples of explanations how the values of gnu(n)
were obtained in the following example:

```
gap> List([105,128,2004,10000,2304,3^8,7^2*5^2*11*19,50000],GnuExplained);
[ [ 2, "using NrSmallGroups and the GAP Small Groups Library" ],
  [ 2328, "using NrSmallGroups and the GAP Small Groups Library" ],
  [ 10, "using NrSmallGroups and the GAP Small Groups Library" ],
  [ 4728, "precomputed using GrpConst package" ],
  [ 15756130, "http://dx.doi.org/10.1016/j.jalgebra.2013.09.028" ],
  [ 1396077, "using NrSmallGroups from SglPPow 1.1" ],
  [ 8, "using NumberCFGroups from CubeFree 1.15" ],
  [ false, "not stored in gnu50000 and no library of groups of size 50000" ] ]
gap> 
```

### Remote connection

It is also possible to access the data without local installation by 
accessing the dedicated GAP SCSCP server running in the Microsoft Azure 
cloud, which is periodically restarted to pick up database updates.
To access this server from GAP, first you need to load the SCSCP package:

```
gap> LoadPackage("scscp");
```

Note that SCSCP package requires the IO package, and the IO package needs
compilation on UNIX systems (for Windows, the GAP distributions comes with 
compiled binaries for the IO package).

After that, download and read (or copy and paste) the following file into GAP:
https://raw.githubusercontent.com/alex-konovalov/gnu/master/lib/gnuclient.g

Now you are able to use remote counterparts of the commands shown in the
previous section:

```
gap> GnuFromServer(50016);
1208
gap> GnuExplainedFromServer(50080);
[ 1434, "precomputed using GrpConst package" ]
gap> NextUnknownGnuFromServer(50080);
50112
gap> GnuWishlistFromServer([50000..50100]);
[ 50000, 50048 ]
```

If you have locally installed package, then the functions mentioned in this
section will become available after its loading.

To access the GAP SCSCP server from other SCSCP-compliant systems, follow
their documentation for SCSCP client functionality and use the server
name scscp.gap-system.org and port number 26133 similarly to the calls 
in <https://github.com/alex-konovalov/gnu/blob/master/lib/gnuclient.g>


### Contributing to the database

You can help to the development of this database with the following
contributions:
- submitting new values of gnu(n)
- recording information about partial results to be pursued further
- verifying existing entries (possibly using other hardware, operating 
  systems, new releases of GAP and related packages)
- improving the functionality of this package

You can submit new values of gnu(n) as new issues or pull requests 
to this repository. The template for the new issue/pull request will ask
you to check that you provide the following details:
- Version of GAP and critical packages: GrpConst, Cubefree, etc.
- Brief description of the computer used for the calculation 
  (operating system, processor, RAM)
- Runtime required for the calculation
- GAP commands used for the calculation
- Confirm that the output `r` of `ConstructAllGroups` is a *list* of 
  groups (`ForAll(r,IsGroup)` should return `true`), or otherwise confirm 
  that if the output contained lists of groups, then those groups were 
  also shown to be pairwise non-isomorphic.

This information will be used to re-run your calculations and add gnu(n)
to the database after such validation.

Group orders that are currently not included in the database can be 
determined using `NextUnknownGnu`, `GnuWishlist` and their remote procedure
call counterparts `NextUnknownGnuFromServer` and `GnuWishlistFromServer` 
as shown above.

To submit partial results, please create new issues in this repository
and tell what you have tried and at which step the calculation stopped.
It will be useful to know, for example, about time-consuming cases that
did not finish after substantial amount of time, or run out of memory,
or where only the first step of the calculation had been completed, but
checking the non-isomorphism has not been done. 

You can also help with validating new submissions or rechecking existing 
ones, and with improving mathematical functionality of the package or
its infrastructural part.

You may generate parts of the submission automatically using the `grpconst.sh` 
script: <https://github.com/alex-konovalov/gnu/blob/master/grpconst.sh> after 
editing it to adjust the path to GAP. For example:

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

In this case, instead of filling in the template you can copy and paste
the last block of lines into your submission, and will only need to add 
the description of the computer used for the computation. However, in 
case when the isomorphic groups can not be eliminated, further check will 
be needed (see e.g. <https://github.com/alex-konovalov/gnu/issues/18>).

Further details could be found in the CONTRIBUTING.md file here:
<https://github.com/alex-konovalov/gnu/blob/master/CONTRIBUTING.md>
