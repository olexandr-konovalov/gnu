### Contributing to the database

The file `data/gnudata.g` contains some precomputed values of gnu(n) for
orders which are not covered by the GAP Small Groups Library, CubeFree
and SglPPow packages. Contributions providing more values of Gnu(n) 
are welcomed. They may be submitted as issues or pull requests (see
examples at <https://github.com/alex-konovalov/gnu/issues> and
<https://github.com/alex-konovalov/gnu/pulls>). When a new issue or pull 
request will be created, you will see a template asking for additional 
details needed to verify your calculation and keep provenance of the 
data. You may generate most of the text automatically using the function
`GnuByConstructAllGroups` from the `grpconst.g` script as described in 
<https://github.com/alex-konovalov/gnu/blob/master/README.md>. Then you 
will only need to add the description of the computer used for the
computation.

# Rules of submitting values of gnu(n)

Please follow the following rules to ensure that information is recorded
in a trackable and searchable way:
- for issues, submit strictly one issue per group order
- pull requests may cover one or several orders; in the latter 
  case they should have strictly one commit per order
- if gnu(n) is determined, the title of the issue/PR should start with
  `gnu(n)=X` where n and X are replaced by corresponding numbers.
- to report partial results for some n, the title of the issue should
  start with `gnu(n)`. It will be edited afterwards in case the calculation 
  will be completed.
- use the style `gnu(n)` instead of `Gnu( n )`: no capital `G` and no
  padding in the parentheses.

Commit messages (made by submitters via pull requests or by the maintainers 
must contain all provenance data so that it will be possible to recover details 
using a clone of the repository.

The new values of gnu(n) will be added to the database only after passing the
validation procedure. These checklists will be used by the reviewer and the 
maintainer of the database (which could be the same or different persons).

Checklist for the reviewer:
- checked and assigned labels "new (n<50000)" or "recomputation", if needed
- reproducible value of gnu(n)
- no essential runtime differences
- sufficient level of technical details
- assigned label "validated" after successful review

Checklist for the maintainer:
- correct arguments of command to store data
- correct location of new line in the data file
- mention submitter and reviewer in the commit message
- close corresponding issue from the commit message 

The labels assigned to gnu(n) submissions have the following meaning:
- new (n<50000): not known before value of gnu(n) for n<50000
- recomputation: recording computation details for previously known gnu(n)
- validation needed: new submissions
- non-isomorphism check needed: results of `ConstructAllGroups` contain
  sublists and require further refinement
- challenge: calculations that are exceptionally runtime or memory-demanding,
  not currently automated, etc.
- validated: calculations successfully checked 

# Where is the wishlist for gnu(n)?

There is no maintained wishlist for the values of gnu(n), because one could
always query the database locally or remotely to get the most up to date
information. Missing orders can be determined using `NextUnknownGnu`, 
`GnuWishlist` and their RPC counterparts `NextUnknownGnuFromServer` and 
`GnuWishlistFromServer`. For example, one could get locally

```
gap> NextUnknownGnu(10000);
10080
gap> GnuWishlist([2000..10000]);
[ 2048, ............ some more orders ............
  ................................................ ]
```

or the same remotely with

```
gap> NextUnknownGnuFromServer(10000);
10080
gap> GnuWishlistFromServer([2000..10000]);
[ 2048, ............ some more orders ............
  ................................................ ]
```

It is also suggested to check on GitHub for open issues labeled "challenge",
"validation needed", "non-isomorphism check needed". If you have partial
results (for example, run the construction part but were unable to verify
non-isomorphism or run calculation for several days but to no avail), please 
also post them - they will be useful for further experiments.
