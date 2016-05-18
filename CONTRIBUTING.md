### Contributing to the database

The file `data/gnudata.g` contains some precomputed values of gnu(n) for
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

Then you will only need to add the description of the computer used for the
computation.

NOTE: In case when the isomorphic groups can not be eliminated, further check 
is needed. See, for example, <https://github.com/alex-konovalov/gnu/issues/18>.


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
[ 2048, 2240, 2496, 2560, 2592, 2688, 2880, 2916, 3072, 3136, 3168, 3200, 
  3264, 3360, 3402, 3456, 3520, 3584, 3648, 3744, 3840, 4000, 4032, 4096, 
  4160, 4224, 4320, 4374, 4416, 4480, 4536, 4608, 4704, 4752, 4800, 4860, 
  4896, 4928, 4992, 5000, 5040, 5120, 5184, 5280, 5376, 5440, 5472, 5488, 
  5568, 5600, 5616, 5632, 5760, 5824, 5832, 5952, 6000, 6048, 6080, 6144, 
  6240, 6272, 6318, 6336, 6400, 6480, 6528, 6624, 6656, 6720, 6804, 6912, 
  7040, 7056, 7104, 7128, 7168, 7200, 7290, 7296, 7344, 7360, 7392, 7488, 
  7500, 7616, 7680, 7744, 7776, 7840, 7872, 7920, 7938, 8000, 8064, 8100, 
  8160, 8192, 8256, 8320, 8352, 8400, 8424, 8448, 8512, 8640, 8704, 8736, 
  8748, 8800, 8832, 8928, 8960, 9024, 9072, 9120, 9152, 9216, 9261, 9280, 
  9360, 9408, 9504, 9600, 9604, 9720, 9728, 9792, 9856, 9920, 9936, 9984 ]
```

or the same remotely with

```
gap> NextUnknownGnuFromServer(10000);
10080
gap> GnuWishlistFromServer([2000..10000]);
[ 2048, 2240, 2496, 2560, 2592, 2688, 2880, 2916, 3072, 3136, 3168, 3200, 
  3264, 3360, 3402, 3456, 3520, 3584, 3648, 3744, 3840, 4000, 4032, 4096, 
  4160, 4224, 4320, 4374, 4416, 4480, 4536, 4608, 4704, 4752, 4800, 4860, 
  4896, 4928, 4992, 5000, 5040, 5120, 5184, 5280, 5376, 5440, 5472, 5488, 
  5568, 5600, 5616, 5632, 5760, 5824, 5832, 5952, 6000, 6048, 6080, 6144, 
  6240, 6272, 6318, 6336, 6400, 6480, 6528, 6624, 6656, 6720, 6804, 6912, 
  7040, 7056, 7104, 7128, 7168, 7200, 7290, 7296, 7344, 7360, 7392, 7488, 
  7500, 7616, 7680, 7744, 7776, 7840, 7872, 7920, 7938, 8000, 8064, 8100, 
  8160, 8192, 8256, 8320, 8352, 8400, 8424, 8448, 8512, 8640, 8704, 8736, 
  8748, 8800, 8832, 8928, 8960, 9024, 9072, 9120, 9152, 9216, 9261, 9280, 
  9360, 9408, 9504, 9600, 9604, 9720, 9728, 9792, 9856, 9920, 9936, 9984 ]
```

It is also suggested to look on GitHub for open issues labeled "challenge",
"validation needed", "non-isomorphism check needed". If you have partial
results (for example, run the construction part but were unable to verify
non-isomorphism or run calculation for several days to no avail), please 
also post them - they will be useful for further experiments.

